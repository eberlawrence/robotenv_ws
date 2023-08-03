;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::ConnectCamera)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'ConnectCamera (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::CONNECTCAMERA")
  (make-package "PHOXI_CAMERA::CONNECTCAMERA"))
(unless (find-package "PHOXI_CAMERA::CONNECTCAMERAREQUEST")
  (make-package "PHOXI_CAMERA::CONNECTCAMERAREQUEST"))
(unless (find-package "PHOXI_CAMERA::CONNECTCAMERARESPONSE")
  (make-package "PHOXI_CAMERA::CONNECTCAMERARESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::ConnectCameraRequest
  :super ros::object
  :slots (_name ))

(defmethod phoxi_camera::ConnectCameraRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass phoxi_camera::ConnectCameraResponse
  :super ros::object
  :slots (_message _success ))

(defmethod phoxi_camera::ConnectCameraResponse
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

(defclass phoxi_camera::ConnectCamera
  :super ros::object
  :slots ())

(setf (get phoxi_camera::ConnectCamera :md5sum-) "1ea130197b1f2a147f83501adb347895")
(setf (get phoxi_camera::ConnectCamera :datatype-) "phoxi_camera/ConnectCamera")
(setf (get phoxi_camera::ConnectCamera :request) phoxi_camera::ConnectCameraRequest)
(setf (get phoxi_camera::ConnectCamera :response) phoxi_camera::ConnectCameraResponse)

(defmethod phoxi_camera::ConnectCameraRequest
  (:response () (instance phoxi_camera::ConnectCameraResponse :init)))

(setf (get phoxi_camera::ConnectCameraRequest :md5sum-) "1ea130197b1f2a147f83501adb347895")
(setf (get phoxi_camera::ConnectCameraRequest :datatype-) "phoxi_camera/ConnectCameraRequest")
(setf (get phoxi_camera::ConnectCameraRequest :definition-)
      "string name
---
string message
bool success
")

(setf (get phoxi_camera::ConnectCameraResponse :md5sum-) "1ea130197b1f2a147f83501adb347895")
(setf (get phoxi_camera::ConnectCameraResponse :datatype-) "phoxi_camera/ConnectCameraResponse")
(setf (get phoxi_camera::ConnectCameraResponse :definition-)
      "string name
---
string message
bool success
")



(provide :phoxi_camera/ConnectCamera "1ea130197b1f2a147f83501adb347895")


