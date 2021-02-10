// Auto-generated. Do not edit!

// (in-package object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory = require('./trajectory.js');

//-----------------------------------------------------------

class trajectory_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.all_car = null;
      this.host_car_id = null;
    }
    else {
      if (initObj.hasOwnProperty('all_car')) {
        this.all_car = initObj.all_car
      }
      else {
        this.all_car = [];
      }
      if (initObj.hasOwnProperty('host_car_id')) {
        this.host_car_id = initObj.host_car_id
      }
      else {
        this.host_car_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type trajectory_array
    // Serialize message field [all_car]
    // Serialize the length for message field [all_car]
    bufferOffset = _serializer.uint32(obj.all_car.length, buffer, bufferOffset);
    obj.all_car.forEach((val) => {
      bufferOffset = trajectory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [host_car_id]
    bufferOffset = _serializer.int8(obj.host_car_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type trajectory_array
    let len;
    let data = new trajectory_array(null);
    // Deserialize message field [all_car]
    // Deserialize array length for message field [all_car]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.all_car = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.all_car[i] = trajectory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [host_car_id]
    data.host_car_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.all_car.forEach((val) => {
      length += trajectory.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_msgs/trajectory_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92ff43ffdd6900a1509a628214083282';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    trajectory[] all_car
    int8 host_car_id
    ================================================================================
    MSG: object_msgs/trajectory
    std_msgs/Header header
    int8 id                 # car id
    bool[] mask             # validity : 1 or 0
    int8 valid_sequence_num # ex) valid_sequence_num=4 means that only first 4 sequences are valid
    Object[] trajectory     # 
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
    MSG: object_msgs/Object
    std_msgs/Header header
    uint32 id
    
    # The type of classification given to this object.
    uint8 classification
    uint8 CLASSIFICATION_UNKNOWN=0
    uint8 CLASSIFICATION_CAR=1
    uint8 CLASSIFICATION_PEDESTRIAN=2
    uint8 CLASSIFICATION_CYCLIST=3
    
    # The detected position and orientation of the object.
    float32 x       # m
    float32 y       # m
    float32 yaw     # rad
    
    float32 v       # m/s
    float32 yawrate # rad/s
    
    float32 a      # m/ss
    float32 delta  # radian
    
    # size
    float32 L     # m
    float32 W     # m
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new trajectory_array(null);
    if (msg.all_car !== undefined) {
      resolved.all_car = new Array(msg.all_car.length);
      for (let i = 0; i < resolved.all_car.length; ++i) {
        resolved.all_car[i] = trajectory.Resolve(msg.all_car[i]);
      }
    }
    else {
      resolved.all_car = []
    }

    if (msg.host_car_id !== undefined) {
      resolved.host_car_id = msg.host_car_id;
    }
    else {
      resolved.host_car_id = 0
    }

    return resolved;
    }
};

module.exports = trajectory_array;
