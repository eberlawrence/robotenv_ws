;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::SetTransformationMatrix)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'SetTransformationMatrix (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::SETTRANSFORMATIONMATRIX")
  (make-package "PHOXI_CAMERA::SETTRANSFORMATIONMATRIX"))
(unless (find-package "PHOXI_CAMERA::SETTRANSFORMATIONMATRIXREQUEST")
  (make-package "PHOXI_CAMERA::SETTRANSFORMATIONMATRIXREQUEST"))
(unless (find-package "PHOXI_CAMERA::SETTRANSFORMATIONMATRIXRESPONSE")
  (make-package "PHOXI_CAMERA::SETTRANSFORMATIONMATRIXRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass phoxi_camera::SetTransformationMatrixRequest
  :super ros::object
  :slots (_transform _coordinates_space _set_space _save_settings ))

(defmethod phoxi_camera::SetTransformationMatrixRequest
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:coordinates_space __coordinates_space) 0)
    ((:set_space __set_space) nil)
    ((:save_settings __save_settings) nil)
    )
   (send-super :init)
   (setq _transform __transform)
   (setq _coordinates_space (round __coordinates_space))
   (setq _set_space __set_space)
   (setq _save_settings __save_settings)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:coordinates_space
   (&optional __coordinates_space)
   (if __coordinates_space (setq _coordinates_space __coordinates_space)) _coordinates_space)
  (:set_space
   (&optional (__set_space :null))
   (if (not (eq __set_space :null)) (setq _set_space __set_space)) _set_space)
  (:save_settings
   (&optional (__save_settings :null))
   (if (not (eq __save_settings :null)) (setq _save_settings __save_settings)) _save_settings)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; uint8 _coordinates_space
    1
    ;; bool _set_space
    1
    ;; bool _save_settings
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; uint8 _coordinates_space
       (write-byte _coordinates_space s)
     ;; bool _set_space
       (if _set_space (write-byte -1 s) (write-byte 0 s))
     ;; bool _save_settings
       (if _save_settings (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; uint8 _coordinates_space
     (setq _coordinates_space (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _set_space
     (setq _set_space (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _save_settings
     (setq _save_settings (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::SetTransformationMatrixResponse
  :super ros::object
  :slots (_message _success ))

(defmethod phoxi_camera::SetTransformationMatrixResponse
  (:init
   (&key
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::SetTransformationMatrix
  :super ros::object
  :slots ())

(setf (get phoxi_camera::SetTransformationMatrix :md5sum-) "451cc6edd533358f5a507561ee1fbaee")
(setf (get phoxi_camera::SetTransformationMatrix :datatype-) "phoxi_camera/SetTransformationMatrix")
(setf (get phoxi_camera::SetTransformationMatrix :request) phoxi_camera::SetTransformationMatrixRequest)
(setf (get phoxi_camera::SetTransformationMatrix :response) phoxi_camera::SetTransformationMatrixResponse)

(defmethod phoxi_camera::SetTransformationMatrixRequest
  (:response () (instance phoxi_camera::SetTransformationMatrixResponse :init)))

(setf (get phoxi_camera::SetTransformationMatrixRequest :md5sum-) "451cc6edd533358f5a507561ee1fbaee")
(setf (get phoxi_camera::SetTransformationMatrixRequest :datatype-) "phoxi_camera/SetTransformationMatrixRequest")
(setf (get phoxi_camera::SetTransformationMatrixRequest :definition-)
      "geometry_msgs/Transform transform
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
---
string message
bool success
")

(setf (get phoxi_camera::SetTransformationMatrixResponse :md5sum-) "451cc6edd533358f5a507561ee1fbaee")
(setf (get phoxi_camera::SetTransformationMatrixResponse :datatype-) "phoxi_camera/SetTransformationMatrixResponse")
(setf (get phoxi_camera::SetTransformationMatrixResponse :definition-)
      "geometry_msgs/Transform transform
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
---
string message
bool success
")



(provide :phoxi_camera/SetTransformationMatrix "451cc6edd533358f5a507561ee1fbaee")


