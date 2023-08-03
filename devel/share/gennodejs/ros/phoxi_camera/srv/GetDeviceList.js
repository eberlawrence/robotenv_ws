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

let DeviceInformation = require('../msg/DeviceInformation.js');

//-----------------------------------------------------------

class GetDeviceListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceListRequest
    let len;
    let data = new GetDeviceListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetDeviceListRequest';
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
    const resolved = new GetDeviceListRequest(null);
    return resolved;
    }
};

class GetDeviceListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.len = null;
      this.out = null;
      this.device_information_list = null;
      this.message = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('len')) {
        this.len = initObj.len
      }
      else {
        this.len = 0;
      }
      if (initObj.hasOwnProperty('out')) {
        this.out = initObj.out
      }
      else {
        this.out = [];
      }
      if (initObj.hasOwnProperty('device_information_list')) {
        this.device_information_list = initObj.device_information_list
      }
      else {
        this.device_information_list = [];
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
    // Serializes a message object of type GetDeviceListResponse
    // Serialize message field [len]
    bufferOffset = _serializer.int64(obj.len, buffer, bufferOffset);
    // Serialize message field [out]
    bufferOffset = _arraySerializer.string(obj.out, buffer, bufferOffset, null);
    // Serialize message field [device_information_list]
    // Serialize the length for message field [device_information_list]
    bufferOffset = _serializer.uint32(obj.device_information_list.length, buffer, bufferOffset);
    obj.device_information_list.forEach((val) => {
      bufferOffset = DeviceInformation.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceListResponse
    let len;
    let data = new GetDeviceListResponse(null);
    // Deserialize message field [len]
    data.len = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [out]
    data.out = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [device_information_list]
    // Deserialize array length for message field [device_information_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.device_information_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.device_information_list[i] = DeviceInformation.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.out.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.device_information_list.forEach((val) => {
      length += DeviceInformation.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/GetDeviceListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef887ca1bac751f546c7538e865ddf92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 len
    string[] out
    phoxi_camera/DeviceInformation[] device_information_list
    string message
    bool success
    
    ================================================================================
    MSG: phoxi_camera/DeviceInformation
    string name
    phoxi_camera/DeviceType type
    string hwIdentification
    string IPaddress
    phoxi_camera/DeviceConnectionStatus status
    string firmwareVersion
    ================================================================================
    MSG: phoxi_camera/DeviceType
    int32 type
    int32 PhoXiScanner = 0
    int32 PhoXiCamera = 1
    int32 NoValue = 3
    ================================================================================
    MSG: phoxi_camera/DeviceConnectionStatus
    int32 status
    int32 Unknown = 0
    int32 Ready = 1
    int32 Occupied = 2
    int32 Starting = 3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDeviceListResponse(null);
    if (msg.len !== undefined) {
      resolved.len = msg.len;
    }
    else {
      resolved.len = 0
    }

    if (msg.out !== undefined) {
      resolved.out = msg.out;
    }
    else {
      resolved.out = []
    }

    if (msg.device_information_list !== undefined) {
      resolved.device_information_list = new Array(msg.device_information_list.length);
      for (let i = 0; i < resolved.device_information_list.length; ++i) {
        resolved.device_information_list[i] = DeviceInformation.Resolve(msg.device_information_list[i]);
      }
    }
    else {
      resolved.device_information_list = []
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
  Request: GetDeviceListRequest,
  Response: GetDeviceListResponse,
  md5sum() { return 'ef887ca1bac751f546c7538e865ddf92'; },
  datatype() { return 'phoxi_camera/GetDeviceList'; }
};
