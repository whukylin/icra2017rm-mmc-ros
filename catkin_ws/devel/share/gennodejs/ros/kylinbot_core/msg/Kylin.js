// Auto-generated. Do not edit!

// (in-package kylinbot_core.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CBUS = require('./CBUS.js');

//-----------------------------------------------------------

class Kylin {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.cbus = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('cbus')) {
        this.cbus = initObj.cbus
      }
      else {
        this.cbus = new CBUS();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Kylin
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint32(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [cbus]
    bufferOffset = CBUS.serialize(obj.cbus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Kylin
    let len;
    let data = new Kylin(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cbus]
    data.cbus = CBUS.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kylinbot_core/Kylin';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7131cdc32dd59ffa695dfef23c1bbcb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 frame_id
    CBUS cbus
    
    ================================================================================
    MSG: kylinbot_core/CBUS
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
    const resolved = new Kylin(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.cbus !== undefined) {
      resolved.cbus = CBUS.Resolve(msg.cbus)
    }
    else {
      resolved.cbus = new CBUS()
    }

    return resolved;
    }
};

module.exports = Kylin;
