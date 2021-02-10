import numpy as np

# paramters
dt = 0.1

k = 0.5  # control gain

# GV70 PARAMETERS
LENGTH = 4.715
WIDTH = 1.910

def normalize_angle(angle):
	while angle > np.pi:
		angle -= 2.0 * np.pi

	while angle < -np.pi:
		angle += 2.0 * np.pi

	return angle


def stanley_control(x, y, yaw, v, map_xs, map_ys, map_yaws, L):
	# find nearest point
	global k
	min_dist = 1e9
	min_index = 0
	n_points = len(map_xs)

	front_x = x + L * np.cos(yaw)
	front_y = y + L * np.sin(yaw)

	for i in range(n_points):
		dx = front_x - map_xs[i]
		dy = front_y - map_ys[i]

		dist = np.sqrt(dx * dx + dy * dy)
		if dist < min_dist:
			min_dist = dist
			min_index = i

	# compute cte at front axle
	map_x = map_xs[min_index]
	map_y = map_ys[min_index]
	map_yaw = map_yaws[min_index]
	dx = map_x - front_x
	dy = map_y - front_y

	perp_vec = [np.cos(yaw + np.pi/2), np.sin(yaw + np.pi/2)]
	cte = np.dot([dx, dy], perp_vec)

	# control law
#	yaw_term = normalize_angle(map_yaw - yaw) * np.sin(np.pi/2 / (1+v/5))
	yaw_term = normalize_angle(map_yaw - yaw)
	cte_term = np.arctan2(k*cte, v)
	w_yaw = 0.9
	w_cte = 0.65
	k = 0.5
	# steering
	steer = w_yaw * yaw_term + w_cte * cte_term
	
	return steer, [w_yaw, w_cte, k, yaw_term, cte_term]
