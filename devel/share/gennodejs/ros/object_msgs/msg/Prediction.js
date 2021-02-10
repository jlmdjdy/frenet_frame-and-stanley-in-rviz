// Auto-generated. Do not edit!

// (in-package object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Prediction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.n_predictions = null;
      this.dt = null;
      this.predictions = null;
      this.sigx = null;
      this.sigy = null;
      this.rho = null;
      this.t0 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('n_predictions')) {
        this.n_predictions = initObj.n_predictions
      }
      else {
        this.n_predictions = 0;
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
      if (initObj.hasOwnProperty('predictions')) {
        this.predictions = initObj.predictions
      }
      else {
        this.predictions = [];
      }
      if (initObj.hasOwnProperty('sigx')) {
        this.sigx = initObj.sigx
      }
      else {
        this.sigx = [];
      }
      if (initObj.hasOwnProperty('sigy')) {
        this.sigy = initObj.sigy
      }
      else {
        this.sigy = [];
      }
      if (initObj.hasOwnProperty('rho')) {
        this.rho = initObj.rho
      }
      else {
        this.rho = [];
      }
      if (initObj.hasOwnProperty('t0')) {
        this.t0 = initObj.t0
      }
      else {
        this.t0 = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Prediction
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [n_predictions]
    bufferOffset = _serializer.uint32(obj.n_predictions, buffer, bufferOffset);
    // Serialize message field [dt]
    bufferOffset = _serializer.float32(obj.dt, buffer, bufferOffset);
    // Serialize message field [predictions]
    // Serialize the length for message field [predictions]
    bufferOffset = _serializer.uint32(obj.predictions.length, buffer, bufferOffset);
    obj.predictions.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sigx]
    bufferOffset = _arraySerializer.float32(obj.sigx, buffer, bufferOffset, null);
    // Serialize message field [sigy]
    bufferOffset = _arraySerializer.float32(obj.sigy, buffer, bufferOffset, null);
    // Serialize message field [rho]
    bufferOffset = _arraySerializer.float32(obj.rho, buffer, bufferOffset, null);
    // Serialize message field [t0]
    bufferOffset = _serializer.time(obj.t0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Prediction
    let len;
    let data = new Prediction(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [n_predictions]
    data.n_predictions = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dt]
    data.dt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [predictions]
    // Deserialize array length for message field [predictions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predictions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predictions[i] = Object.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sigx]
    data.sigx = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sigy]
    data.sigy = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rho]
    data.rho = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [t0]
    data.t0 = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.predictions.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    length += 4 * object.sigx.length;
    length += 4 * object.sigy.length;
    length += 4 * object.rho.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_msgs/Prediction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62eb5942cfcf183980a3aa9c64433045';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Prediction(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.n_predictions !== undefined) {
      resolved.n_predictions = msg.n_predictions;
    }
    else {
      resolved.n_predictions = 0
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    if (msg.predictions !== undefined) {
      resolved.predictions = new Array(msg.predictions.length);
      for (let i = 0; i < resolved.predictions.length; ++i) {
        resolved.predictions[i] = Object.Resolve(msg.predictions[i]);
      }
    }
    else {
      resolved.predictions = []
    }

    if (msg.sigx !== undefined) {
      resolved.sigx = msg.sigx;
    }
    else {
      resolved.sigx = []
    }

    if (msg.sigy !== undefined) {
      resolved.sigy = msg.sigy;
    }
    else {
      resolved.sigy = []
    }

    if (msg.rho !== undefined) {
      resolved.rho = msg.rho;
    }
    else {
      resolved.rho = []
    }

    if (msg.t0 !== undefined) {
      resolved.t0 = msg.t0;
    }
    else {
      resolved.t0 = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = Prediction;
