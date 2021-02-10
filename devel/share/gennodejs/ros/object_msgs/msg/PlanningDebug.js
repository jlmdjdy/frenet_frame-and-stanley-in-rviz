// Auto-generated. Do not edit!

// (in-package object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Trajectory = require('./Trajectory.js');
let PolygonArray = require('./PolygonArray.js');
let DebugPrediction = require('./DebugPrediction.js');
let Polygon = require('./Polygon.js');

//-----------------------------------------------------------

class PlanningDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.car2_t0 = null;
      this.car3_t0 = null;
      this.traj_t0 = null;
      this.x0 = null;
      this.y0 = null;
      this.yaw0 = null;
      this.v0 = null;
      this.a0 = null;
      this.planned_trajectories = null;
      this.ego_polygons = null;
      this.costs = null;
      this.best_ind = null;
      this.best_cost = null;
      this.car2_predictions = null;
      this.car3_predictions = null;
      this.car2_polygons = null;
      this.car3_polygons = null;
    }
    else {
      if (initObj.hasOwnProperty('car2_t0')) {
        this.car2_t0 = initObj.car2_t0
      }
      else {
        this.car2_t0 = 0.0;
      }
      if (initObj.hasOwnProperty('car3_t0')) {
        this.car3_t0 = initObj.car3_t0
      }
      else {
        this.car3_t0 = 0.0;
      }
      if (initObj.hasOwnProperty('traj_t0')) {
        this.traj_t0 = initObj.traj_t0
      }
      else {
        this.traj_t0 = 0.0;
      }
      if (initObj.hasOwnProperty('x0')) {
        this.x0 = initObj.x0
      }
      else {
        this.x0 = 0.0;
      }
      if (initObj.hasOwnProperty('y0')) {
        this.y0 = initObj.y0
      }
      else {
        this.y0 = 0.0;
      }
      if (initObj.hasOwnProperty('yaw0')) {
        this.yaw0 = initObj.yaw0
      }
      else {
        this.yaw0 = 0.0;
      }
      if (initObj.hasOwnProperty('v0')) {
        this.v0 = initObj.v0
      }
      else {
        this.v0 = 0.0;
      }
      if (initObj.hasOwnProperty('a0')) {
        this.a0 = initObj.a0
      }
      else {
        this.a0 = 0.0;
      }
      if (initObj.hasOwnProperty('planned_trajectories')) {
        this.planned_trajectories = initObj.planned_trajectories
      }
      else {
        this.planned_trajectories = [];
      }
      if (initObj.hasOwnProperty('ego_polygons')) {
        this.ego_polygons = initObj.ego_polygons
      }
      else {
        this.ego_polygons = [];
      }
      if (initObj.hasOwnProperty('costs')) {
        this.costs = initObj.costs
      }
      else {
        this.costs = [];
      }
      if (initObj.hasOwnProperty('best_ind')) {
        this.best_ind = initObj.best_ind
      }
      else {
        this.best_ind = 0;
      }
      if (initObj.hasOwnProperty('best_cost')) {
        this.best_cost = initObj.best_cost
      }
      else {
        this.best_cost = 0.0;
      }
      if (initObj.hasOwnProperty('car2_predictions')) {
        this.car2_predictions = initObj.car2_predictions
      }
      else {
        this.car2_predictions = [];
      }
      if (initObj.hasOwnProperty('car3_predictions')) {
        this.car3_predictions = initObj.car3_predictions
      }
      else {
        this.car3_predictions = [];
      }
      if (initObj.hasOwnProperty('car2_polygons')) {
        this.car2_polygons = initObj.car2_polygons
      }
      else {
        this.car2_polygons = [];
      }
      if (initObj.hasOwnProperty('car3_polygons')) {
        this.car3_polygons = initObj.car3_polygons
      }
      else {
        this.car3_polygons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningDebug
    // Serialize message field [car2_t0]
    bufferOffset = _serializer.float64(obj.car2_t0, buffer, bufferOffset);
    // Serialize message field [car3_t0]
    bufferOffset = _serializer.float64(obj.car3_t0, buffer, bufferOffset);
    // Serialize message field [traj_t0]
    bufferOffset = _serializer.float64(obj.traj_t0, buffer, bufferOffset);
    // Serialize message field [x0]
    bufferOffset = _serializer.float32(obj.x0, buffer, bufferOffset);
    // Serialize message field [y0]
    bufferOffset = _serializer.float32(obj.y0, buffer, bufferOffset);
    // Serialize message field [yaw0]
    bufferOffset = _serializer.float32(obj.yaw0, buffer, bufferOffset);
    // Serialize message field [v0]
    bufferOffset = _serializer.float32(obj.v0, buffer, bufferOffset);
    // Serialize message field [a0]
    bufferOffset = _serializer.float32(obj.a0, buffer, bufferOffset);
    // Serialize message field [planned_trajectories]
    // Serialize the length for message field [planned_trajectories]
    bufferOffset = _serializer.uint32(obj.planned_trajectories.length, buffer, bufferOffset);
    obj.planned_trajectories.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ego_polygons]
    // Serialize the length for message field [ego_polygons]
    bufferOffset = _serializer.uint32(obj.ego_polygons.length, buffer, bufferOffset);
    obj.ego_polygons.forEach((val) => {
      bufferOffset = PolygonArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [costs]
    bufferOffset = _arraySerializer.float32(obj.costs, buffer, bufferOffset, null);
    // Serialize message field [best_ind]
    bufferOffset = _serializer.int32(obj.best_ind, buffer, bufferOffset);
    // Serialize message field [best_cost]
    bufferOffset = _serializer.float32(obj.best_cost, buffer, bufferOffset);
    // Serialize message field [car2_predictions]
    // Serialize the length for message field [car2_predictions]
    bufferOffset = _serializer.uint32(obj.car2_predictions.length, buffer, bufferOffset);
    obj.car2_predictions.forEach((val) => {
      bufferOffset = DebugPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [car3_predictions]
    // Serialize the length for message field [car3_predictions]
    bufferOffset = _serializer.uint32(obj.car3_predictions.length, buffer, bufferOffset);
    obj.car3_predictions.forEach((val) => {
      bufferOffset = DebugPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [car2_polygons]
    // Serialize the length for message field [car2_polygons]
    bufferOffset = _serializer.uint32(obj.car2_polygons.length, buffer, bufferOffset);
    obj.car2_polygons.forEach((val) => {
      bufferOffset = Polygon.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [car3_polygons]
    // Serialize the length for message field [car3_polygons]
    bufferOffset = _serializer.uint32(obj.car3_polygons.length, buffer, bufferOffset);
    obj.car3_polygons.forEach((val) => {
      bufferOffset = Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningDebug
    let len;
    let data = new PlanningDebug(null);
    // Deserialize message field [car2_t0]
    data.car2_t0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [car3_t0]
    data.car3_t0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [traj_t0]
    data.traj_t0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x0]
    data.x0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y0]
    data.y0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw0]
    data.yaw0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v0]
    data.v0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a0]
    data.a0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [planned_trajectories]
    // Deserialize array length for message field [planned_trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.planned_trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.planned_trajectories[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ego_polygons]
    // Deserialize array length for message field [ego_polygons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ego_polygons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ego_polygons[i] = PolygonArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [costs]
    data.costs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [best_ind]
    data.best_ind = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [best_cost]
    data.best_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [car2_predictions]
    // Deserialize array length for message field [car2_predictions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.car2_predictions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.car2_predictions[i] = DebugPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [car3_predictions]
    // Deserialize array length for message field [car3_predictions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.car3_predictions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.car3_predictions[i] = DebugPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [car2_polygons]
    // Deserialize array length for message field [car2_polygons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.car2_polygons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.car2_polygons[i] = Polygon.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [car3_polygons]
    // Deserialize array length for message field [car3_polygons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.car3_polygons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.car3_polygons[i] = Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.planned_trajectories.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    object.ego_polygons.forEach((val) => {
      length += PolygonArray.getMessageSize(val);
    });
    length += 4 * object.costs.length;
    object.car2_predictions.forEach((val) => {
      length += DebugPrediction.getMessageSize(val);
    });
    object.car3_predictions.forEach((val) => {
      length += DebugPrediction.getMessageSize(val);
    });
    object.car2_polygons.forEach((val) => {
      length += Polygon.getMessageSize(val);
    });
    object.car3_polygons.forEach((val) => {
      length += Polygon.getMessageSize(val);
    });
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_msgs/PlanningDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ebf1e00ef837b4782bf667f543af084';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # time
    float64 car2_t0
    float64 car3_t0
    float64 traj_t0
    
    # position
    float32 x0
    float32 y0
    float32 yaw0
    float32 v0
    float32 a0
    
    # planned trajectories
    object_msgs/Trajectory[] planned_trajectories
    object_msgs/PolygonArray[] ego_polygons
    float32[] costs
    int32 best_ind
    float32 best_cost
    
    # predictions
    object_msgs/DebugPrediction[] car2_predictions
    object_msgs/DebugPrediction[] car3_predictions
    object_msgs/Polygon[] car2_polygons
    object_msgs/Polygon[] car3_polygons
    ================================================================================
    MSG: object_msgs/Trajectory
    std_msgs/Header header
    int32 n
    float32 dt
    float32[] x
    float32[] y
    float32[] yaw
    float32[] kappa
    float32[] a
    float32[] v
    time t0  # time corresponding x[0]
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: object_msgs/PolygonArray
    object_msgs/Polygon[] polygon_list
    ================================================================================
    MSG: object_msgs/Polygon
    int32 n
    float32[] x
    float32[] y
    ================================================================================
    MSG: object_msgs/DebugPrediction
    # prediction msg
    float32[] x
    float32[] y
    float32[] yaw
    
    float32[] sigx
    float32[] sigy
    float32[] rho
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningDebug(null);
    if (msg.car2_t0 !== undefined) {
      resolved.car2_t0 = msg.car2_t0;
    }
    else {
      resolved.car2_t0 = 0.0
    }

    if (msg.car3_t0 !== undefined) {
      resolved.car3_t0 = msg.car3_t0;
    }
    else {
      resolved.car3_t0 = 0.0
    }

    if (msg.traj_t0 !== undefined) {
      resolved.traj_t0 = msg.traj_t0;
    }
    else {
      resolved.traj_t0 = 0.0
    }

    if (msg.x0 !== undefined) {
      resolved.x0 = msg.x0;
    }
    else {
      resolved.x0 = 0.0
    }

    if (msg.y0 !== undefined) {
      resolved.y0 = msg.y0;
    }
    else {
      resolved.y0 = 0.0
    }

    if (msg.yaw0 !== undefined) {
      resolved.yaw0 = msg.yaw0;
    }
    else {
      resolved.yaw0 = 0.0
    }

    if (msg.v0 !== undefined) {
      resolved.v0 = msg.v0;
    }
    else {
      resolved.v0 = 0.0
    }

    if (msg.a0 !== undefined) {
      resolved.a0 = msg.a0;
    }
    else {
      resolved.a0 = 0.0
    }

    if (msg.planned_trajectories !== undefined) {
      resolved.planned_trajectories = new Array(msg.planned_trajectories.length);
      for (let i = 0; i < resolved.planned_trajectories.length; ++i) {
        resolved.planned_trajectories[i] = Trajectory.Resolve(msg.planned_trajectories[i]);
      }
    }
    else {
      resolved.planned_trajectories = []
    }

    if (msg.ego_polygons !== undefined) {
      resolved.ego_polygons = new Array(msg.ego_polygons.length);
      for (let i = 0; i < resolved.ego_polygons.length; ++i) {
        resolved.ego_polygons[i] = PolygonArray.Resolve(msg.ego_polygons[i]);
      }
    }
    else {
      resolved.ego_polygons = []
    }

    if (msg.costs !== undefined) {
      resolved.costs = msg.costs;
    }
    else {
      resolved.costs = []
    }

    if (msg.best_ind !== undefined) {
      resolved.best_ind = msg.best_ind;
    }
    else {
      resolved.best_ind = 0
    }

    if (msg.best_cost !== undefined) {
      resolved.best_cost = msg.best_cost;
    }
    else {
      resolved.best_cost = 0.0
    }

    if (msg.car2_predictions !== undefined) {
      resolved.car2_predictions = new Array(msg.car2_predictions.length);
      for (let i = 0; i < resolved.car2_predictions.length; ++i) {
        resolved.car2_predictions[i] = DebugPrediction.Resolve(msg.car2_predictions[i]);
      }
    }
    else {
      resolved.car2_predictions = []
    }

    if (msg.car3_predictions !== undefined) {
      resolved.car3_predictions = new Array(msg.car3_predictions.length);
      for (let i = 0; i < resolved.car3_predictions.length; ++i) {
        resolved.car3_predictions[i] = DebugPrediction.Resolve(msg.car3_predictions[i]);
      }
    }
    else {
      resolved.car3_predictions = []
    }

    if (msg.car2_polygons !== undefined) {
      resolved.car2_polygons = new Array(msg.car2_polygons.length);
      for (let i = 0; i < resolved.car2_polygons.length; ++i) {
        resolved.car2_polygons[i] = Polygon.Resolve(msg.car2_polygons[i]);
      }
    }
    else {
      resolved.car2_polygons = []
    }

    if (msg.car3_polygons !== undefined) {
      resolved.car3_polygons = new Array(msg.car3_polygons.length);
      for (let i = 0; i < resolved.car3_polygons.length; ++i) {
        resolved.car3_polygons[i] = Polygon.Resolve(msg.car3_polygons[i]);
      }
    }
    else {
      resolved.car3_polygons = []
    }

    return resolved;
    }
};

module.exports = PlanningDebug;
