// Auto-generated. Do not edit!

// (in-package phoxi_camera.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let PhoXiSize = require('../msg/PhoXiSize.js');

//-----------------------------------------------------------

class GetSupportedCapturingModesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSupportedCapturingModesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSupportedCapturingModesRequest
    let len;
    let data = new GetSupportedCapturingModesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetSupportedCapturingModesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSupportedCapturingModesRequest(null);
    return resolved;
    }
};

class GetSupportedCapturingModesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.supported_capturing_modes = null;
      this.message = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('supported_capturing_modes')) {
        this.supported_capturing_modes = initObj.supported_capturing_modes
      }
      else {
        this.supported_capturing_modes = [];
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSupportedCapturingModesResponse
    // Serialize message field [supported_capturing_modes]
    // Serialize the length for message field [supported_capturing_modes]
    bufferOffset = _serializer.uint32(obj.supported_capturing_modes.length, buffer, bufferOffset);
    obj.supported_capturing_modes.forEach((val) => {
      bufferOffset = PhoXiSize.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSupportedCapturingModesResponse
    let len;
    let data = new GetSupportedCapturingModesResponse(null);
    // Deserialize message field [supported_capturing_modes]
    // Deserialize array length for message field [supported_capturing_modes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.supported_capturing_modes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.supported_capturing_modes[i] = PhoXiSize.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.supported_capturing_modes.length;
    length += _getByteLength(object.message);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetSupportedCapturingModesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c53f107b6664a0a9fe4d1c76bd5c1e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PhoXiSize[] supported_capturing_modes
    string message
    bool success
    
    ================================================================================
    MSG: phoxi_camera/PhoXiSize
    int32 Width
    int32 Height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSupportedCapturingModesResponse(null);
    if (msg.supported_capturing_modes !== undefined) {
      resolved.supported_capturing_modes = new Array(msg.supported_capturing_modes.length);
      for (let i = 0; i < resolved.supported_capturing_modes.length; ++i) {
        resolved.supported_capturing_modes[i] = PhoXiSize.Resolve(msg.supported_capturing_modes[i]);
      }
    }
    else {
      resolved.supported_capturing_modes = []
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSupportedCapturingModesRequest,
  Response: GetSupportedCapturingModesResponse,
  md5sum() { return '1c53f107b6664a0a9fe4d1c76bd5c1e0'; },
  datatype() { return 'phoxi_camera/GetSupportedCapturingModes'; }
};
