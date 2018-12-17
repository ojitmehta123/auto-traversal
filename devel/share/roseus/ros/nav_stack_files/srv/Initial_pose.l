;; Auto-generated. Do not edit!


(when (boundp 'nav_stack_files::Initial_pose)
  (if (not (find-package "NAV_STACK_FILES"))
    (make-package "NAV_STACK_FILES"))
  (shadow 'Initial_pose (find-package "NAV_STACK_FILES")))
(unless (find-package "NAV_STACK_FILES::INITIAL_POSE")
  (make-package "NAV_STACK_FILES::INITIAL_POSE"))
(unless (find-package "NAV_STACK_FILES::INITIAL_POSEREQUEST")
  (make-package "NAV_STACK_FILES::INITIAL_POSEREQUEST"))
(unless (find-package "NAV_STACK_FILES::INITIAL_POSERESPONSE")
  (make-package "NAV_STACK_FILES::INITIAL_POSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass nav_stack_files::Initial_poseRequest
  :super ros::object
  :slots (_give_pose ))

(defmethod nav_stack_files::Initial_poseRequest
  (:init
   (&key
    ((:give_pose __give_pose) nil)
    )
   (send-super :init)
   (setq _give_pose __give_pose)
   self)
  (:give_pose
   (&optional __give_pose)
   (if __give_pose (setq _give_pose __give_pose)) _give_pose)
  (:serialization-length
   ()
   (+
    ;; bool _give_pose
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _give_pose
       (if _give_pose (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _give_pose
     (setq _give_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nav_stack_files::Initial_poseResponse
  :super ros::object
  :slots (_this_pose ))

(defmethod nav_stack_files::Initial_poseResponse
  (:init
   (&key
    ((:this_pose __this_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _this_pose __this_pose)
   self)
  (:this_pose
   (&rest __this_pose)
   (if (keywordp (car __this_pose))
       (send* _this_pose __this_pose)
     (progn
       (if __this_pose (setq _this_pose (car __this_pose)))
       _this_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _this_pose
    (send _this_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _this_pose
       (send _this_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _this_pose
     (send _this_pose :deserialize buf ptr-) (incf ptr- (send _this_pose :serialization-length))
   ;;
   self)
  )

(defclass nav_stack_files::Initial_pose
  :super ros::object
  :slots ())

(setf (get nav_stack_files::Initial_pose :md5sum-) "b406c1ab8e345a7a46ea98c82c4055d8")
(setf (get nav_stack_files::Initial_pose :datatype-) "nav_stack_files/Initial_pose")
(setf (get nav_stack_files::Initial_pose :request) nav_stack_files::Initial_poseRequest)
(setf (get nav_stack_files::Initial_pose :response) nav_stack_files::Initial_poseResponse)

(defmethod nav_stack_files::Initial_poseRequest
  (:response () (instance nav_stack_files::Initial_poseResponse :init)))

(setf (get nav_stack_files::Initial_poseRequest :md5sum-) "b406c1ab8e345a7a46ea98c82c4055d8")
(setf (get nav_stack_files::Initial_poseRequest :datatype-) "nav_stack_files/Initial_poseRequest")
(setf (get nav_stack_files::Initial_poseRequest :definition-)
      "bool give_pose
---
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
")

(setf (get nav_stack_files::Initial_poseResponse :md5sum-) "b406c1ab8e345a7a46ea98c82c4055d8")
(setf (get nav_stack_files::Initial_poseResponse :datatype-) "nav_stack_files/Initial_poseResponse")
(setf (get nav_stack_files::Initial_poseResponse :definition-)
      "bool give_pose
---
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
")



(provide :nav_stack_files/Initial_pose "b406c1ab8e345a7a46ea98c82c4055d8")


