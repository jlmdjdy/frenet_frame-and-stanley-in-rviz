// Auto-generated. Do not edit!

// (in-package object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Prediction = require('./Prediction.js');

//-----------------------------------------------------------

class Predictions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.n_prediction = null;
      this.predictions = null;
      this.prob = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('n_prediction')) {
        this.n_prediction = initObj.n_prediction
      }
      else {
        this.n_prediction = 0;
      }
      if (initObj.hasOwnProperty('predictions')) {
        this.predictions = initObj.predictions
      }
      else {
        this.predictions = [];
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Predictions
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [n_prediction]
    bufferOffset = _serializer.int32(obj.n_prediction, buffer, bufferOffset);
    // Serialize message field [predictions]
    // Serialize the length for message field [predictions]
    bufferOffset = _serializer.uint32(obj.predictions.length, buffer, bufferOffset);
    obj.predictions.forEach((val) => {
      bufferOffset = Prediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [prob]
    bufferOffset = _arraySerializer.float32(obj.prob, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Predictions
    let len;
    let data = new Predictions(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [n_prediction]
    data.n_prediction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [predictions]
    // Deserialize array length for message field [predictions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predictions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predictions[i] = Prediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [prob]
    data.prob = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.predictions.forEach((val) => {
      length += Prediction.getMessageSize(val);
    });
    length += 4 * object.prob.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_msgs/Predictions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8937a5011813d4b881807b890c93552';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 n_prediction
    object_msgs/Prediction[] predictions
    float32[] prob
    
    ================================================================================
    MSG: object_msgs/Prediction
    std_msgs/Header header
    uint32 id
    
    uint32 n_predictions
    float32 dt  # s
    object_msgs/Object[] predictions
    
    float32[] sigx
    float32[] sigy
    float32[] rho
    time t0  # time corresponding prediction[0]
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
    const resolved = new Predictions(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.n_prediction !== undefined) {
      resolved.n_prediction = msg.n_prediction;
    }
    else {
      resolved.n_prediction = 0
    }

    if (msg.predictions !== undefined) {
      resolved.predictions = new Array(msg.predictions.length);
      for (let i = 0; i < resolved.predictions.length; ++i) {
        resolved.predictions[i] = Prediction.Resolve(msg.predictions[i]);
      }
    }
    else {
      resolved.predictions = []
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = []
    }

    return resolved;
    }
};

module.exports = Predictions;
