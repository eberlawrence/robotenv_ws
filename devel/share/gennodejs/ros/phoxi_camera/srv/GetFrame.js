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


//-----------------------------------------------------------

class GetFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.in = null;
    }
    else {
      if (initObj.hasOwnProperty('in')) {
        this.in = initObj.in
      }
      else {
        this.in = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFrameRequest
    // Serialize message field [in]
    bufferOffset = _serializer.int64(obj.in, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFrameRequest
    let len;
    let data = new GetFrameRequest(null);
    // Deserialize message field [in]
    data.in = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4533fa4b560434bb6b34ff197fccd4e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFrameRequest(null);
    if (msg.in !== undefined) {
      resolved.in = msg.in;
    }
    else {
      resolved.in = 0
    }

    return resolved;
    }
};

class GetFrameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
      this.success = null;
    }
    else {
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
    // Serializes a message object of type GetFrameResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFrameResponse
    let len;
    let data = new GetFrameResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetFrameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bf829f07d795d3f9e541a07897da2c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFrameResponse(null);
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
  Request: GetFrameRequest,
  Response: GetFrameResponse,
  md5sum() { return '51ed6a27e8851d6116d5fe59ddb47078'; },
  datatype() { return 'phoxi_camera/GetFrame'; }
};
