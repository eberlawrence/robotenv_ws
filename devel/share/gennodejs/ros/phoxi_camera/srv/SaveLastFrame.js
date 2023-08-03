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

class SaveLastFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_path = null;
    }
    else {
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveLastFrameRequest
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveLastFrameRequest
    let len;
    let data = new SaveLastFrameRequest(null);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.file_path);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/SaveLastFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1f82596372c52a517e1fe32d1e998e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_path     # full file path with file extension, available extensions: *.praw; *.ply; *.ptx; *.tif; *.prawf
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveLastFrameRequest(null);
    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    return resolved;
    }
};

class SaveLastFrameResponse {
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
    // Serializes a message object of type SaveLastFrameResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveLastFrameResponse
    let len;
    let data = new SaveLastFrameResponse(null);
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
    return 'phoxi_camera/SaveLastFrameResponse';
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
    const resolved = new SaveLastFrameResponse(null);
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
  Request: SaveLastFrameRequest,
  Response: SaveLastFrameResponse,
  md5sum() { return '881a7419fa699b3f5ff01ccdf209643b'; },
  datatype() { return 'phoxi_camera/SaveLastFrame'; }
};
