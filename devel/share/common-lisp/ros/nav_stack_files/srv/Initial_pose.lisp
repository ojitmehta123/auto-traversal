; Auto-generated. Do not edit!


(cl:in-package nav_stack_files-srv)


;//! \htmlinclude Initial_pose-request.msg.html

(cl:defclass <Initial_pose-request> (roslisp-msg-protocol:ros-message)
  ((give_pose
    :reader give_pose
    :initarg :give_pose
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Initial_pose-request (<Initial_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Initial_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Initial_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_stack_files-srv:<Initial_pose-request> is deprecated: use nav_stack_files-srv:Initial_pose-request instead.")))

(cl:ensure-generic-function 'give_pose-val :lambda-list '(m))
(cl:defmethod give_pose-val ((m <Initial_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_stack_files-srv:give_pose-val is deprecated.  Use nav_stack_files-srv:give_pose instead.")
  (give_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Initial_pose-request>) ostream)
  "Serializes a message object of type '<Initial_pose-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'give_pose) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Initial_pose-request>) istream)
  "Deserializes a message object of type '<Initial_pose-request>"
    (cl:setf (cl:slot-value msg 'give_pose) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Initial_pose-request>)))
  "Returns string type for a service object of type '<Initial_pose-request>"
  "nav_stack_files/Initial_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initial_pose-request)))
  "Returns string type for a service object of type 'Initial_pose-request"
  "nav_stack_files/Initial_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Initial_pose-request>)))
  "Returns md5sum for a message object of type '<Initial_pose-request>"
  "b406c1ab8e345a7a46ea98c82c4055d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Initial_pose-request)))
  "Returns md5sum for a message object of type 'Initial_pose-request"
  "b406c1ab8e345a7a46ea98c82c4055d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Initial_pose-request>)))
  "Returns full string definition for message of type '<Initial_pose-request>"
  (cl:format cl:nil "bool give_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Initial_pose-request)))
  "Returns full string definition for message of type 'Initial_pose-request"
  (cl:format cl:nil "bool give_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Initial_pose-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Initial_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Initial_pose-request
    (cl:cons ':give_pose (give_pose msg))
))
;//! \htmlinclude Initial_pose-response.msg.html

(cl:defclass <Initial_pose-response> (roslisp-msg-protocol:ros-message)
  ((this_pose
    :reader this_pose
    :initarg :this_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Initial_pose-response (<Initial_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Initial_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Initial_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_stack_files-srv:<Initial_pose-response> is deprecated: use nav_stack_files-srv:Initial_pose-response instead.")))

(cl:ensure-generic-function 'this_pose-val :lambda-list '(m))
(cl:defmethod this_pose-val ((m <Initial_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_stack_files-srv:this_pose-val is deprecated.  Use nav_stack_files-srv:this_pose instead.")
  (this_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Initial_pose-response>) ostream)
  "Serializes a message object of type '<Initial_pose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'this_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Initial_pose-response>) istream)
  "Deserializes a message object of type '<Initial_pose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'this_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Initial_pose-response>)))
  "Returns string type for a service object of type '<Initial_pose-response>"
  "nav_stack_files/Initial_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initial_pose-response)))
  "Returns string type for a service object of type 'Initial_pose-response"
  "nav_stack_files/Initial_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Initial_pose-response>)))
  "Returns md5sum for a message object of type '<Initial_pose-response>"
  "b406c1ab8e345a7a46ea98c82c4055d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Initial_pose-response)))
  "Returns md5sum for a message object of type 'Initial_pose-response"
  "b406c1ab8e345a7a46ea98c82c4055d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Initial_pose-response>)))
  "Returns full string definition for message of type '<Initial_pose-response>"
  (cl:format cl:nil "geometry_msgs/Pose this_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Initial_pose-response)))
  "Returns full string definition for message of type 'Initial_pose-response"
  (cl:format cl:nil "geometry_msgs/Pose this_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Initial_pose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'this_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Initial_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Initial_pose-response
    (cl:cons ':this_pose (this_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Initial_pose)))
  'Initial_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Initial_pose)))
  'Initial_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initial_pose)))
  "Returns string type for a service object of type '<Initial_pose>"
  "nav_stack_files/Initial_pose")