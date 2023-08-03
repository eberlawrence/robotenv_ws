// Auto-generated. Do not edit!

// (in-package phoxi_camera.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DeviceType = require('./DeviceType.js');
let DeviceConnectionStatus = require('./DeviceConnectionStatus.js');

//-----------------------------------------------------------

class DeviceInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.hwIdentification = null;
      this.IPaddress = null;
      this.status = null;
      this.firmwareVersion = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new DeviceType();
      }
      if (initObj.hasOwnProperty('hwIdentification')) {
        this.hwIdentification = initObj.hwIdentification
      }
      else {
        this.hwIdentification = '';
      }
      if (initObj.hasOwnProperty('IPaddress')) {
        this.IPaddress = initObj.IPaddress
      }
      else {
        this.IPaddress = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new DeviceConnectionStatus();
      }
      if (initObj.hasOwnProperty('firmwareVersion')) {
        this.firmwareVersion = initObj.firmwareVersion
      }
      else {
        this.firmwareVersion = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeviceInformation
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = DeviceType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [hwIdentification]
    bufferOffset = _serializer.string(obj.hwIdentification, buffer, bufferOffset);
    // Serialize message field [IPaddress]
    bufferOffset = _serializer.string(obj.IPaddress, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = DeviceConnectionStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [firmwareVersion]
    bufferOffset = _serializer.string(obj.firmwareVersion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeviceInformation
    let len;
    let data = new DeviceInformation(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = DeviceType.deserialize(buffer, bufferOffset);
    // Deserialize message field [hwIdentification]
    data.hwIdentification = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [IPaddress]
    data.IPaddress = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = DeviceConnectionStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [firmwareVersion]
    data.firmwareVersion = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.hwIdentification);
    length += _getByteLength(object.IPaddress);
    length += _getByteLength(object.firmwareVersion);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'phoxi_camera/DeviceInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b0bc4d79cc2229b2b1a6277b66a3576';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DeviceInformation(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = DeviceType.Resolve(msg.type)
    }
    else {
      resolved.type = new DeviceType()
    }

    if (msg.hwIdentification !== undefined) {
      resolved.hwIdentification = msg.hwIdentification;
    }
    else {
      resolved.hwIdentification = ''
    }

    if (msg.IPaddress !== undefined) {
      resolved.IPaddress = msg.IPaddress;
    }
    else {
      resolved.IPaddress = ''
    }

    if (msg.status !== undefined) {
      resolved.status = DeviceConnectionStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new DeviceConnectionStatus()
    }

    if (msg.firmwareVersion !== undefined) {
      resolved.firmwareVersion = msg.firmwareVersion;
    }
    else {
      resolved.firmwareVersion = ''
    }

    return resolved;
    }
};

module.exports = DeviceInformation;
