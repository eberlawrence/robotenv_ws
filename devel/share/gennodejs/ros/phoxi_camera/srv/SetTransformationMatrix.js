// Auto-generated. Do not edit!

// (in-package phoxi_camera.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTransformationMatrixRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
      this.coordinates_space = null;
      this.set_space = null;
      this.save_settings = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('coordinates_space')) {
        this.coordinates_space = initObj.coordinates_space
      }
      else {
        this.coordinates_space = 0;
      }
      if (initObj.hasOwnProperty('set_space')) {
        this.set_space = initObj.set_space
      }
      else {
        this.set_space = false;
      }
      if (initObj.hasOwnProperty('save_settings')) {
        this.save_settings = initObj.save_settings
      }
      else {
        this.save_settings = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTransformationMatrixRequest
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [coordinates_space]
    bufferOffset = _serializer.uint8(obj.coordinates_space, buffer, bufferOffset);
    // Serialize message field [set_space]
    bufferOffset = _serializer.bool(obj.set_space, buffer, bufferOffset);
    // Serialize message field [save_settings]
    bufferOffset = _serializer.bool(obj.save_settings, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTransformationMatrixRequest
    let len;
    let data = new SetTransformationMatrixRequest(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [coordinates_space]
    data.coordinates_space = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [set_space]
    data.set_space = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [save_settings]
    data.save_settings = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 59;
  }

  static datatype() {
    // Returns string type for a service object
    return 'phoxi_camera/SetTransformationMatrixRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48667bafc40499797cfb210fb2801b2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Transform transform
    uint8 coordinates_space     # 1 = CameraSpace, 2 = MountingSpace, 3 = MarkerSpace, 4 = RobotSpace, 5 = CustomSpace
    bool set_space              # If true then set coordinates_space to to PhoXi Control.
    bool save_settings          # If true then settings will persist after restart of PhoXi Control.
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTransformationMatrixRequest(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.coordinates_space !== undefined) {
      resolved.coordinates_space = msg.coordinates_space;
    }
    else {
      resolved.coordinates_space = 0
    }

    if (msg.set_space !== undefined) {
      resolved.set_space = msg.set_space;
    }
    else {
      resolved.set_space = false
    }

    if (msg.save_settings !== undefined) {
      resolved.save_settings = msg.save_settings;
    }
    else {
      resolved.save_settings = false
    }

    return resolved;
    }
};

class SetTransformationMatrixResponse {
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
    // Serializes a message object of type SetTransformationMatrixResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTransformationMatrixResponse
    let len;
    let data = new SetTransformationMatrixResponse(null);
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
    return 'phoxi_camera/SetTransformationMatrixResponse';
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
    const resolved = new SetTransformationMatrixResponse(null);
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
  Request: SetTransformationMatrixRequest,
  Response: SetTransformationMatrixResponse,
  md5sum() { return '451cc6edd533358f5a507561ee1fbaee'; },
  datatype() { return 'phoxi_camera/SetTransformationMatrix'; }
};
