;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::SetCoordinatesSpace)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'SetCoordinatesSpace (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::SETCOORDINATESSPACE")
  (make-package "PHOXI_CAMERA::SETCOORDINATESSPACE"))
(unless (find-package "PHOXI_CAMERA::SETCOORDINATESSPACEREQUEST")
  (make-package "PHOXI_CAMERA::SETCOORDINATESSPACEREQUEST"))
(unless (find-package "PHOXI_CAMERA::SETCOORDINATESSPACERESPONSE")
  (make-package "PHOXI_CAMERA::SETCOORDINATESSPACERESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::SetCoordinatesSpaceRequest
  :super ros::object
  :slots (_coordinates_space ))

(defmethod phoxi_camera::SetCoordinatesSpaceRequest
  (:init
   (&key
    ((:coordinates_space __coordinates_space) 0)
    )
   (send-super :init)
   (setq _coordinates_space (round __coordinates_space))
   self)
  (:coordinates_space
   (&optional __coordinates_space)
   (if __coordinates_space (setq _coordinates_space __coordinates_space)) _coordinates_space)
  (:serialization-length
   ()
   (+
    ;; uint8 _coordinates_space
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _coordinates_space
       (write-byte _coordinates_space s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _coordinates_space
     (setq _coordinates_space (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::SetCoordinatesSpaceResponse
  :super ros::object
  :slots (_message _success ))

(defmethod phoxi_camera::SetCoordinatesSpaceResponse
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

(defclass phoxi_camera::SetCoordinatesSpace
  :super ros::object
  :slots ())

(setf (get phoxi_camera::SetCoordinatesSpace :md5sum-) "6471d6222bbb561b60df31b08bec6e6d")
(setf (get phoxi_camera::SetCoordinatesSpace :datatype-) "phoxi_camera/SetCoordinatesSpace")
(setf (get phoxi_camera::SetCoordinatesSpace :request) phoxi_camera::SetCoordinatesSpaceRequest)
(setf (get phoxi_camera::SetCoordinatesSpace :response) phoxi_camera::SetCoordinatesSpaceResponse)

(defmethod phoxi_camera::SetCoordinatesSpaceRequest
  (:response () (instance phoxi_camera::SetCoordinatesSpaceResponse :init)))

(setf (get phoxi_camera::SetCoordinatesSpaceRequest :md5sum-) "6471d6222bbb561b60df31b08bec6e6d")
(setf (get phoxi_camera::SetCoordinatesSpaceRequest :datatype-) "phoxi_camera/SetCoordinatesSpaceRequest")
(setf (get phoxi_camera::SetCoordinatesSpaceRequest :definition-)
      "uint8 coordinates_space  # NoValue = 0, CameraSpace = 1, MarkerSpace = 3, RobotSpace = 4, CustomSpace = 5
---
string message
bool success
")

(setf (get phoxi_camera::SetCoordinatesSpaceResponse :md5sum-) "6471d6222bbb561b60df31b08bec6e6d")
(setf (get phoxi_camera::SetCoordinatesSpaceResponse :datatype-) "phoxi_camera/SetCoordinatesSpaceResponse")
(setf (get phoxi_camera::SetCoordinatesSpaceResponse :definition-)
      "uint8 coordinates_space  # NoValue = 0, CameraSpace = 1, MarkerSpace = 3, RobotSpace = 4, CustomSpace = 5
---
string message
bool success
")



(provide :phoxi_camera/SetCoordinatesSpace "6471d6222bbb561b60df31b08bec6e6d")


