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

class GetHardwareIdentificationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHardwareIdentificationRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHardwareIdentificationRequest
    let len;
    let data = new GetHardwareIdentificationRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetHardwareIdentificationRequest';
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
    const resolved = new GetHardwareIdentificationRequest(null);
    return resolved;
    }
};

class GetHardwareIdentificationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hardware_identification = null;
      this.message = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('hardware_identification')) {
        this.hardware_identification = initObj.hardware_identification
      }
      else {
        this.hardware_identification = '';
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
    // Serializes a message object of type GetHardwareIdentificationResponse
    // Serialize message field [hardware_identification]
    bufferOffset = _serializer.string(obj.hardware_identification, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHardwareIdentificationResponse
    let len;
    let data = new GetHardwareIdentificationResponse(null);
    // Deserialize message field [hardware_identification]
    data.hardware_identification = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.hardware_identification);
    length += _getByteLength(object.message);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetHardwareIdentificationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c34903a74c1048da945ec8ca8cfa315';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string hardware_identification
    string message
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHardwareIdentificationResponse(null);
    if (msg.hardware_identification !== undefined) {
      resolved.hardware_identification = msg.hardware_identification;
    }
    else {
      resolved.hardware_identification = ''
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
  Request: GetHardwareIdentificationRequest,
  Response: GetHardwareIdentificationResponse,
  md5sum() { return '7c34903a74c1048da945ec8ca8cfa315'; },
  datatype() { return 'phoxi_camera/GetHardwareIdentification'; }
};
