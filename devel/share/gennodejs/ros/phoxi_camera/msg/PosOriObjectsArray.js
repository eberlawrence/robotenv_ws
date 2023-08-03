// Auto-generated. Do not edit!

// (in-package phoxi_camera.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PosOriObjectsArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numObj = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('numObj')) {
        this.numObj = initObj.numObj
      }
      else {
        this.numObj = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosOriObjectsArray
    // Serialize message field [numObj]
    bufferOffset = _serializer.int32(obj.numObj, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float64(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosOriObjectsArray
    let len;
    let data = new PosOriObjectsArray(null);
    // Deserialize message field [numObj]
    data.numObj = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.data.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'phoxi_camera/PosOriObjectsArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8106a020340683775f19b85b38f5f037';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 numObj
    float64[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosOriObjectsArray(null);
    if (msg.numObj !== undefined) {
      resolved.numObj = msg.numObj;
    }
    else {
      resolved.numObj = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = PosOriObjectsArray;
