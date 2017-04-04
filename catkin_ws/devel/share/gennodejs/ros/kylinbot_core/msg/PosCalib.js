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

class PosCalib {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.el = null;
      this.eh = null;
      this.cl = null;
      this.ch = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('el')) {
        this.el = initObj.el
      }
      else {
        this.el = 0;
      }
      if (initObj.hasOwnProperty('eh')) {
        this.eh = initObj.eh
      }
      else {
        this.eh = 0;
      }
      if (initObj.hasOwnProperty('cl')) {
        this.cl = initObj.cl
      }
      else {
        this.cl = 0;
      }
      if (initObj.hasOwnProperty('ch')) {
        this.ch = initObj.ch
      }
      else {
        this.ch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosCalib
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint32(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [el]
    bufferOffset = _serializer.int16(obj.el, buffer, bufferOffset);
    // Serialize message field [eh]
    bufferOffset = _serializer.int16(obj.eh, buffer, bufferOffset);
    // Serialize message field [cl]
    bufferOffset = _serializer.int16(obj.cl, buffer, bufferOffset);
    // Serialize message field [ch]
    bufferOffset = _serializer.int16(obj.ch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosCalib
    let len;
    let data = new PosCalib(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [el]
    data.el = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [eh]
    data.eh = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cl]
    data.cl = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ch]
    data.ch = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kylinbot_core/PosCalib';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '908b6b2028673e85c08cdffdd515277c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 frame_id
    int16 el
    int16 eh
    int16 cl
    int16 ch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosCalib(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.el !== undefined) {
      resolved.el = msg.el;
    }
    else {
      resolved.el = 0
    }

    if (msg.eh !== undefined) {
      resolved.eh = msg.eh;
    }
    else {
      resolved.eh = 0
    }

    if (msg.cl !== undefined) {
      resolved.cl = msg.cl;
    }
    else {
      resolved.cl = 0
    }

    if (msg.ch !== undefined) {
      resolved.ch = msg.ch;
    }
    else {
      resolved.ch = 0
    }

    return resolved;
    }
};

module.exports = PosCalib;
