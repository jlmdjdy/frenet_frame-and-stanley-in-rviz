#!/usr/bin/python
#-*- coding: utf-8 -*-

from object_msgs.msg import Object
import rospy
import numpy as np
import math, time
import tf
import matplotlib.pyplot as plt
import rospkg
import sys

from scipy.interpolate import interp1d

from visualization_msgs.msg import Marker, MarkerArray
from geometry_msgs.msg import Quaternion
from object_msgs.msg import Object

import pickle
import argparse

from frenet import *
from stanley import *

rospack = rospkg.RosPack()
path_map = rospack.get_path("map_server")
sys.path.append(path_map + "/src/")
from map_visualizer import Converter

rn_id = dict()

rn_id[5] = {
	'left': [18, 2, 11, 6, 13, 8, 15, 10, 26, 0]  # ego route
}

def pi_2_pi(angle):
	return (angle + math.pi) % (2 * math.pi) - math.pi


def interpolate_waypoints(wx, wy, space=0.5):
	_s = 0
	s = [0]
	for i in range(1, len(wx)):
		prev_x = wx[i - 1]
		prev_y = wy[i - 1]
		x = wx[i]
		y = wy[i]

		dx = x - prev_x
		dy = y - prev_y

		_s = np.hypot(dx, dy)
		s.append(s[-1] + _s)

	fx = interp1d(s, wx)
	fy = interp1d(s, wy)
	ss = np.linspace(0, s[-1], num=int(s[-1] / space) + 1, endpoint=True)

	dxds = np.gradient(fx(ss), ss, edge_order=1)
	dyds = np.gradient(fy(ss), ss, edge_order=1)
	wyaw = np.arctan2(dyds, dxds)

	return {
		"x": fx(ss),
		"y": fy(ss),
		"yaw": wyaw,
		"s": ss
	}


class State:

	def __init__(self, x=0.0, y=0.0, yaw=0.0, v=0.0, dt=0.1, WB=2.6):
		self.x = x
		self.y = y
		self.yaw = yaw
		self.v = v
		self.rear_x = self.x - ((WB / 2) * math.cos(self.yaw))
		self.rear_y = self.y - ((WB / 2) * math.sin(self.yaw))
		self.dt = dt
		self.WB = WB

	def update(self, a, delta):
		dt = self.dt
		WB = self.WB

		self.x += self.v * math.cos(self.yaw) * dt
		self.y += self.v * math.sin(self.yaw) * dt
		self.yaw += self.v / WB * math.tan(delta) * dt
		self.yaw = pi_2_pi(self.yaw)
		self.v += a * dt
		self.rear_x = self.x - ((WB / 2) * math.cos(self.yaw))
		self.rear_y = self.y - ((WB / 2) * math.sin(self.yaw))

	def calc_distance(self, point_x, point_y):
		dx = self.rear_x - point_x
		dy = self.rear_y - point_y
		return math.hypot(dx, dy)


def get_ros_msg(x, y, yaw, v, id):
	quat = tf.transformations.quaternion_from_euler(0, 0, yaw)

	m = Marker()
	m.header.frame_id = "/map"
	m.header.stamp = rospy.Time.now()
	m.id = id
	m.type = m.CUBE

	m.pose.position.x = x + 1.3 * math.cos(yaw)
	m.pose.position.y = y + 1.3 * math.sin(yaw)
	m.pose.position.z = 0.75
	m.pose.orientation = Quaternion(*quat)

	m.scale.x = 4.475
	m.scale.y = 1.850
	m.scale.z = 1.645

	m.color.r = 93 / 255.0
	m.color.g = 122 / 255.0
	m.color.b = 177 / 255.0
	m.color.a = 0.97

	o = Object()
	o.header.frame_id = "/map"
	o.header.stamp = rospy.Time.now()
	o.id = id
	o.classification = o.CLASSIFICATION_CAR
	o.x = x
	o.y = y
	o.yaw = yaw
	o.v = v
	o.L = m.scale.x
	o.W = m.scale.y

	return {
		"object_msg": o,
		"marker_msg": m,
		"quaternion": quat
	}

obs_init1 = Object(x=1, y=11, yaw=1, L=4, W=5)
obs_init2 = Object(x=3, y=33, yaw=1, L=3, W=3)
obs_info = [obs_init1, obs_init2]

def callback1(msg):
	global obs_info
	obs_info[0] = msg

def callback2(msg):
	global obs_info
	obs_info[1] = msg

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Spawn a CV agent')

	parser.add_argument("--id", "-i", type=int, help="agent id", default=1)
	parser.add_argument("--route", "-r", type=int,
						help="start index in road network. select in [1, 3, 5, 10]", default=5)
	parser.add_argument("--dir", "-d", type=str, default="left", help="direction to go: [left, straight, right]")
	args, unknown = parser.parse_known_args()

	rospy.init_node("three_cv_agents_node_" + str(args.id))
	sub_obs = rospy.Subscriber("/objects/marker/car_1", Marker, queue_size=1)
	sub_obs2 = rospy.Subscriber("/objects/car_2", Object, callback1, queue_size=1)
	sub_obs3 = rospy.Subscriber("/objects/car_3", Object, callback2, queue_size=1)

	while sub_obs2.get_num_connections() == 0 or sub_obs3.get_num_connections() == 0:
		continue

	id = args.id
	tf_broadcaster = tf.TransformBroadcaster()
	#marker_pub = rospy.Publisher("/objects/marker/car_" + str(id), Marker, queue_size=1)
	object_pub = rospy.Publisher("/objects/car_" + str(id), Object, queue_size=1)
	opt_frenet_pub = rospy.Publisher("/rviz/optimal_frenet_path", MarkerArray, queue_size=1)
	cand_frenet_pub = rospy.Publisher("/rviz/candidate_frenet_paths", MarkerArray, queue_size=1)

	start_node_id = args.route
	route_id_list = [start_node_id] + rn_id[start_node_id][args.dir]

	with open(path_map + "/src/route.pkl", "rb") as f:
		nodes = pickle.load(f)

	wx = []
	wy = []
	wyaw = []
	for _id in route_id_list:
		wx.append(nodes[_id]["x"][1:])
		wy.append(nodes[_id]["y"][1:])
		wyaw.append(nodes[_id]["yaw"][1:])
	wx = np.concatenate(wx)
	wy = np.concatenate(wy)
	wyaw = np.concatenate(wyaw)

	# ws = np.zeros(wx.shape)
	# for i in range(len(ws)):
	# 	x = wx[i]
	# 	y = wy[i]
	# 	sd = get_frenet(x, y, wx, wy)
	# 	ws[i] = sd[0]

	waypoints = interpolate_waypoints(wx, wy, space=0.5)
	#waypoints = {"x": wx, "y": wy, "yaw": wyaw, "s" : ws}

	mapx = waypoints["x"]
	mapy = waypoints["y"]
	mapyaw = waypoints["yaw"]
	maps = waypoints["s"]

	ind = 10
	target_speed = 30.0 / 3.6
	state = State(x=mapx[ind], y=mapy[ind], yaw=mapyaw[ind], v=0.1, dt=0.1)
	prev_v = state.v
	error_ia = 0
	r = rospy.Rate(10)
	ai = 0

	s, d = get_frenet(state.x, state.y, mapx, mapy)
	x, y, road_yaw = get_cartesian(s, d, mapx, mapy, maps)
	yawi = state.yaw - road_yaw
	si = s
	si_d = state.v * math.cos(yawi)
	si_dd = ai * math.cos(yawi)
	sf_d = target_speed
	sf_dd = 0

	di = d
	di_d = state.v * math.sin(yawi)
	di_dd = ai * math.sin(yawi)
	df_d = 0
	df_dd = 0
	
	opt_d = d
	prev_opt_d = d

	opt_frenet_path = Converter(r=0, g=255/255.0, b=100/255.0, a=1, scale=0.7)
	cand_frenet_paths = Converter(r=0, g=100/255.0, b=100/255.0, a=0.4, scale= 0.2)

	while not rospy.is_shutdown():
		# generate acceleration ai, and steering di
		# YOUR CODE HERE


		path, opt_ind = frenet_optimal_planning(si, si_d, si_dd, sf_d, sf_dd, di, di_d, di_dd, df_d, df_dd, obs_info, mapx, mapy, maps, opt_d, target_speed)
		# update state with acc, delta

		if opt_ind == -1:
			s, d = get_frenet(state.x, state.y, mapx, mapy)
			x, y, road_yaw = get_cartesian(s, d, mapx, mapy, maps)
			steer = road_yaw - state.yaw
			a = 0
			opt_d = prev_opt_d
		else:
			error_pa = target_speed - state.v
			error_da = state.v - prev_v
			error_ia += target_speed - state.v
			kp_a = 0.5
			kd_a = 0.7
			ki_a = 0.01
			a = kp_a * error_pa + kd_a * error_da + ki_a * error_ia
			steer, _ = stanley_control(state.x, state.y, state.yaw, state.v, path[opt_ind].x, path[opt_ind].y, path[opt_ind].yaw, state.WB)

			ways = []
			for p in path:
				way = {
					"x" : p.x,
					"y" : p.y
				}	
				ways.append(way)
			opt_frenet_path.make_marker_array([ways[opt_ind]])
			cand_frenet_paths.make_marker_array(ways)

			opt_d = path[opt_ind].d[-1]
			prev_opt_d = path[opt_ind].d[-1]
		
		state.update(a, steer)
		print("speed = " + str(state.v) + ",steer = " + str(steer))
		prev_v = state.v

		s, d = get_frenet(state.x, state.y, mapx, mapy)
		x, y, road_yaw = get_cartesian(s, d, mapx, mapy, maps)
		yaw_diff = state.yaw - road_yaw

		si = s
		si_d = state.v * math.cos(yaw_diff)
		si_dd = ai * math.cos(yaw_diff)
		sf_d = target_speed
		sf_dd = 0
		
		di = d
		di_d = state.v * math.sin(yaw_diff)
		di_dd = ai * math.sin(yaw_diff)
		df_d = 0
		df_dd = 0

		# vehicle state --> topic msg
		msg = get_ros_msg(state.x, state.y, state.yaw, state.v, id=id)

		# send tf
		tf_broadcaster.sendTransform(
			(state.x, state.y, 1.5),
			msg["quaternion"],
			rospy.Time.now(),
			"/car_" + str(id), "/map"
		)

		# publish vehicle state in ros msg
		object_pub.publish(msg["object_msg"])
		opt_frenet_pub.publish(opt_frenet_path.ma)
		cand_frenet_pub.publish(cand_frenet_paths.ma)

		r.sleep()
