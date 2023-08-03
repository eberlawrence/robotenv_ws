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

class IsAcquiringRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsAcquiringRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsAcquiringRequest
    let len;
    let data = new IsAcquiringRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/IsAcquiringRequest';
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
    const resolved = new IsAcquiringRequest(null);
    return resolved;
    }
};

class IsAcquiringResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_acquiring = null;
    }
    else {
      if (initObj.hasOwnProperty('is_acquiring')) {
        this.is_acquiring = initObj.is_acquiring
      }
      else {
        this.is_acquiring = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsAcquiringResponse
    // Serialize message field [is_acquiring]
    bufferOffset = _serializer.bool(obj.is_acquiring, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsAcquiringResponse
    let len;
    let data = new IsAcquiringResponse(null);
    // Deserialize message field [is_acquiring]
    data.is_acquiring = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/IsAcquiringResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '178c4f223aa32769d3555a15bcb0158f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_acquiring
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsAcquiringResponse(null);
    if (msg.is_acquiring !== undefined) {
      resolved.is_acquiring = msg.is_acquiring;
    }
    else {
      resolved.is_acquiring = false
    }

    return resolved;
    }
};

module.exports = {
  Request: IsAcquiringRequest,
  Response: IsAcquiringResponse,
  md5sum() { return '178c4f223aa32769d3555a15bcb0158f'; },
  datatype() { return 'phoxi_camera/IsAcquiring'; }
};
