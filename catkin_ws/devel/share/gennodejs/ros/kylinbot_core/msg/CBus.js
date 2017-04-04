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

class CBus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.fs = null;
      this.px = null;
      this.py = null;
      this.pz = null;
      this.pe = null;
      this.pc = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.ve = null;
      this.vc = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('fs')) {
        this.fs = initObj.fs
      }
      else {
        this.fs = 0;
      }
      if (initObj.hasOwnProperty('px')) {
        this.px = initObj.px
      }
      else {
        this.px = 0;
      }
      if (initObj.hasOwnProperty('py')) {
        this.py = initObj.py
      }
      else {
        this.py = 0;
      }
      if (initObj.hasOwnProperty('pz')) {
        this.pz = initObj.pz
      }
      else {
        this.pz = 0;
      }
      if (initObj.hasOwnProperty('pe')) {
        this.pe = initObj.pe
      }
      else {
        this.pe = 0;
      }
      if (initObj.hasOwnProperty('pc')) {
        this.pc = initObj.pc
      }
      else {
        this.pc = 0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0;
      }
      if (initObj.hasOwnProperty('ve')) {
        this.ve = initObj.ve
      }
      else {
        this.ve = 0;
      }
      if (initObj.hasOwnProperty('vc')) {
        this.vc = initObj.vc
      }
      else {
        this.vc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CBus
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint32(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [fs]
    bufferOffset = _serializer.uint32(obj.fs, buffer, bufferOffset);
    // Serialize message field [px]
    bufferOffset = _serializer.int16(obj.px, buffer, bufferOffset);
    // Serialize message field [py]
    bufferOffset = _serializer.int16(obj.py, buffer, bufferOffset);
    // Serialize message field [pz]
    bufferOffset = _serializer.int16(obj.pz, buffer, bufferOffset);
    // Serialize message field [pe]
    bufferOffset = _serializer.int16(obj.pe, buffer, bufferOffset);
    // Serialize message field [pc]
    bufferOffset = _serializer.int16(obj.pc, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.int16(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.int16(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.int16(obj.vz, buffer, bufferOffset);
    // Serialize message field [ve]
    bufferOffset = _serializer.int16(obj.ve, buffer, bufferOffset);
    // Serialize message field [vc]
    bufferOffset = _serializer.int16(obj.vc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CBus
    let len;
    let data = new CBus(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fs]
    data.fs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [px]
    data.px = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [py]
    data.py = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pz]
    data.pz = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pe]
    data.pe = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pc]
    data.pc = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ve]
    data.ve = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vc]
    data.vc = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kylinbot_core/CBus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3967d8d8fa11fc1d390feac8e67e859c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 frame_id
    uint32 fs
    int16 px
    int16 py
    int16 pz
    int16 pe
    int16 pc
    int16 vx
    int16 vy
    int16 vz
    int16 ve
    int16 vc
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CBus(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.fs !== undefined) {
      resolved.fs = msg.fs;
    }
    else {
      resolved.fs = 0
    }

    if (msg.px !== undefined) {
      resolved.px = msg.px;
    }
    else {
      resolved.px = 0
    }

    if (msg.py !== undefined) {
      resolved.py = msg.py;
    }
    else {
      resolved.py = 0
    }

    if (msg.pz !== undefined) {
      resolved.pz = msg.pz;
    }
    else {
      resolved.pz = 0
    }

    if (msg.pe !== undefined) {
      resolved.pe = msg.pe;
    }
    else {
      resolved.pe = 0
    }

    if (msg.pc !== undefined) {
      resolved.pc = msg.pc;
    }
    else {
      resolved.pc = 0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0
    }

    if (msg.ve !== undefined) {
      resolved.ve = msg.ve;
    }
    else {
      resolved.ve = 0
    }

    if (msg.vc !== undefined) {
      resolved.vc = msg.vc;
    }
    else {
      resolved.vc = 0
    }

    return resolved;
    }
};

module.exports = CBus;
