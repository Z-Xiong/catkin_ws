// Auto-generated. Do not edit!

// (in-package learning_communication.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Score {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.classes = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('classes')) {
        this.classes = initObj.classes
      }
      else {
        this.classes = '';
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Score
    // Serialize message field [classes]
    bufferOffset = _serializer.string(obj.classes, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Score
    let len;
    let data = new Score(null);
    // Deserialize message field [classes]
    data.classes = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.classes.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'learning_communication/Score';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c81dd8d900f3622d702e378825806a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string classes
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Score(null);
    if (msg.classes !== undefined) {
      resolved.classes = msg.classes;
    }
    else {
      resolved.classes = ''
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = Score;
