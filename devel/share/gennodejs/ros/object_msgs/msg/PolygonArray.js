// Auto-generated. Do not edit!

// (in-package object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polygon = require('./Polygon.js');

//-----------------------------------------------------------

class PolygonArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polygon_list = null;
    }
    else {
      if (initObj.hasOwnProperty('polygon_list')) {
        this.polygon_list = initObj.polygon_list
      }
      else {
        this.polygon_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolygonArray
    // Serialize message field [polygon_list]
    // Serialize the length for message field [polygon_list]
    bufferOffset = _serializer.uint32(obj.polygon_list.length, buffer, bufferOffset);
    obj.polygon_list.forEach((val) => {
      bufferOffset = Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolygonArray
    let len;
    let data = new PolygonArray(null);
    // Deserialize message field [polygon_list]
    // Deserialize array length for message field [polygon_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_list[i] = Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.polygon_list.forEach((val) => {
      length += Polygon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_msgs/PolygonArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cca23aedf7880d762e94679f98a6bf6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    object_msgs/Polygon[] polygon_list
    ================================================================================
    MSG: object_msgs/Polygon
    int32 n
    float32[] x
    float32[] y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolygonArray(null);
    if (msg.polygon_list !== undefined) {
      resolved.polygon_list = new Array(msg.polygon_list.length);
      for (let i = 0; i < resolved.polygon_list.length; ++i) {
        resolved.polygon_list[i] = Polygon.Resolve(msg.polygon_list[i]);
      }
    }
    else {
      resolved.polygon_list = []
    }

    return resolved;
    }
};

module.exports = PolygonArray;
