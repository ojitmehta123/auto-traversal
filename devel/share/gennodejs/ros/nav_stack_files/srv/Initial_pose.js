// Auto-generated. Do not edit!

// (in-package nav_stack_files.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Initial_poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.give_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('give_pose')) {
        this.give_pose = initObj.give_pose
      }
      else {
        this.give_pose = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Initial_poseRequest
    // Serialize message field [give_pose]
    bufferOffset = _serializer.bool(obj.give_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Initial_poseRequest
    let len;
    let data = new Initial_poseRequest(null);
    // Deserialize message field [give_pose]
    data.give_pose = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nav_stack_files/Initial_poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3901075996d9d1def52134e9591165fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool give_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Initial_poseRequest(null);
    if (msg.give_pose !== undefined) {
      resolved.give_pose = msg.give_pose;
    }
    else {
      resolved.give_pose = false
    }

    return resolved;
    }
};

class Initial_poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.this_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('this_pose')) {
        this.this_pose = initObj.this_pose
      }
      else {
        this.this_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Initial_poseResponse
    // Serialize message field [this_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.this_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Initial_poseResponse
    let len;
    let data = new Initial_poseResponse(null);
    // Deserialize message field [this_pose]
    data.this_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nav_stack_files/Initial_poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '870c0b4171545dbbae81254a8d229368';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose this_pose
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new Initial_poseResponse(null);
    if (msg.this_pose !== undefined) {
      resolved.this_pose = geometry_msgs.msg.Pose.Resolve(msg.this_pose)
    }
    else {
      resolved.this_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: Initial_poseRequest,
  Response: Initial_poseResponse,
  md5sum() { return 'b406c1ab8e345a7a46ea98c82c4055d8'; },
  datatype() { return 'nav_stack_files/Initial_pose'; }
};
