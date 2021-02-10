// Auto-generated. Do not edit!

// (in-package object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DebugPrediction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.yaw = null;
      this.sigx = null;
      this.sigy = null;
      this.rho = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = [];
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugPrediction
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [yaw]
    bufferOffset = _arraySerializer.float32(obj.yaw, buffer, bufferOffset, null);
    // Serialize message field [sigx]
    bufferOffset = _arraySerializer.float32(obj.sigx, buffer, bufferOffset, null);
    // Serialize message field [sigy]
    bufferOffset = _arraySerializer.float32(obj.sigy, buffer, bufferOffset, null);
    // Serialize message field [rho]
    bufferOffset = _arraySerializer.float32(obj.rho, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugPrediction
    let len;
    let data = new DebugPrediction(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [yaw]
    data.yaw = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sigx]
    data.sigx = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sigy]
    data.sigy = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rho]
    data.rho = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.yaw.length;
    length += 4 * object.sigx.length;
    length += 4 * object.sigy.length;
    length += 4 * object.rho.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_msgs/DebugPrediction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06e409df60e4d834580496938433d0da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DebugPrediction(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = []
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

    return resolved;
    }
};

module.exports = DebugPrediction;
