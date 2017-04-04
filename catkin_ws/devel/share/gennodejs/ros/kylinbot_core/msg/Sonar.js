// Auto-generated. Do not edit!

// (in-package kylinbot_core.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Sonar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.fixed = null;
      this.moble = null;
      this.left = null;
      this.right = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('fixed')) {
        this.fixed = initObj.fixed
      }
      else {
        this.fixed = 0;
      }
      if (initObj.hasOwnProperty('moble')) {
        this.moble = initObj.moble
      }
      else {
        this.moble = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sonar
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint32(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [fixed]
    bufferOffset = _serializer.uint16(obj.fixed, buffer, bufferOffset);
    // Serialize message field [moble]
    bufferOffset = _serializer.uint16(obj.moble, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.uint16(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.uint16(obj.right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sonar
    let len;
    let data = new Sonar(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fixed]
    data.fixed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [moble]
    data.moble = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kylinbot_core/Sonar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32e3008d8c0744f5206e9f75d97600c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 frame_id
    uint16 fixed
    uint16 moble
    uint16 left
    uint16 right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sonar(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.fixed !== undefined) {
      resolved.fixed = msg.fixed;
    }
    else {
      resolved.fixed = 0
    }

    if (msg.moble !== undefined) {
      resolved.moble = msg.moble;
    }
    else {
      resolved.moble = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    return resolved;
    }
};

module.exports = Sonar;
