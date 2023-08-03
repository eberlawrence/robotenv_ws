;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::GetBool)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'GetBool (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::GETBOOL")
  (make-package "PHOXI_CAMERA::GETBOOL"))
(unless (find-package "PHOXI_CAMERA::GETBOOLREQUEST")
  (make-package "PHOXI_CAMERA::GETBOOLREQUEST"))
(unless (find-package "PHOXI_CAMERA::GETBOOLRESPONSE")
  (make-package "PHOXI_CAMERA::GETBOOLRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::GetBoolRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::GetBoolRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass phoxi_camera::GetBoolResponse
  :super ros::object
  :slots (_value _message _success ))

(defmethod phoxi_camera::GetBoolResponse
  (:init
   (&key
    ((:value __value) nil)
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _value __value)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::GetBool
  :super ros::object
  :slots ())

(setf (get phoxi_camera::GetBool :md5sum-) "f8b1dd5c3d74b02494854ae2cb789829")
(setf (get phoxi_camera::GetBool :datatype-) "phoxi_camera/GetBool")
(setf (get phoxi_camera::GetBool :request) phoxi_camera::GetBoolRequest)
(setf (get phoxi_camera::GetBool :response) phoxi_camera::GetBoolResponse)

(defmethod phoxi_camera::GetBoolRequest
  (:response () (instance phoxi_camera::GetBoolResponse :init)))

(setf (get phoxi_camera::GetBoolRequest :md5sum-) "f8b1dd5c3d74b02494854ae2cb789829")
(setf (get phoxi_camera::GetBoolRequest :datatype-) "phoxi_camera/GetBoolRequest")
(setf (get phoxi_camera::GetBoolRequest :definition-)
      "---
bool value
string message
bool success
")

(setf (get phoxi_camera::GetBoolResponse :md5sum-) "f8b1dd5c3d74b02494854ae2cb789829")
(setf (get phoxi_camera::GetBoolResponse :datatype-) "phoxi_camera/GetBoolResponse")
(setf (get phoxi_camera::GetBoolResponse :definition-)
      "---
bool value
string message
bool success
")



(provide :phoxi_camera/GetBool "f8b1dd5c3d74b02494854ae2cb789829")


