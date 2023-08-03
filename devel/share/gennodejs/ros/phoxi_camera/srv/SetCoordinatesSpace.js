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

class SetCoordinatesSpaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coordinates_space = null;
    }
    else {
      if (initObj.hasOwnProperty('coordinates_space')) {
        this.coordinates_space = initObj.coordinates_space
      }
      else {
        this.coordinates_space = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCoordinatesSpaceRequest
    // Serialize message field [coordinates_space]
    bufferOffset = _serializer.uint8(obj.coordinates_space, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCoordinatesSpaceRequest
    let len;
    let data = new SetCoordinatesSpaceRequest(null);
    // Deserialize message field [coordinates_space]
    data.coordinates_space = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/SetCoordinatesSpaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb29d6a290d76876ae055943fb930516';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 coordinates_space  # NoValue = 0, CameraSpace = 1, MarkerSpace = 3, RobotSpace = 4, CustomSpace = 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCoordinatesSpaceRequest(null);
    if (msg.coordinates_space !== undefined) {
      resolved.coordinates_space = msg.coordinates_space;
    }
    else {
      resolved.coordinates_space = 0
    }

    return resolved;
    }
};

class SetCoordinatesSpaceResponse {
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
    // Serializes a message object of type SetCoordinatesSpaceResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCoordinatesSpaceResponse
    let len;
    let data = new SetCoordinatesSpaceResponse(null);
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
    return 'phoxi_camera/SetCoordinatesSpaceResponse';
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
    const resolved = new SetCoordinatesSpaceResponse(null);
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
  Request: SetCoordinatesSpaceRequest,
  Response: SetCoordinatesSpaceResponse,
  md5sum() { return '6471d6222bbb561b60df31b08bec6e6d'; },
  datatype() { return 'phoxi_camera/SetCoordinatesSpace'; }
};
