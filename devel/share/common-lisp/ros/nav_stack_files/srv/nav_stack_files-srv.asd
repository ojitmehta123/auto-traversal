
(cl:in-package :asdf)

(defsystem "nav_stack_files-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Initial_pose" :depends-on ("_package_Initial_pose"))
    (:file "_package_Initial_pose" :depends-on ("_package"))
  ))