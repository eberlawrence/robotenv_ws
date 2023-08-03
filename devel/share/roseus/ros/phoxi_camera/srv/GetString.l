;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::GetString)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'GetString (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::GETSTRING")
  (make-package "PHOXI_CAMERA::GETSTRING"))
(unless (find-package "PHOXI_CAMERA::GETSTRINGREQUEST")
  (make-package "PHOXI_CAMERA::GETSTRINGREQUEST"))
(unless (find-package "PHOXI_CAMERA::GETSTRINGRESPONSE")
  (make-package "PHOXI_CAMERA::GETSTRINGRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::GetStringRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::GetStringRequest
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

(defclass phoxi_camera::GetStringResponse
  :super ros::object
  :slots (_value _message _success ))

(defmethod phoxi_camera::GetStringResponse
  (:init
   (&key
    ((:value __value) "")
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _value (string __value))
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::GetString
  :super ros::object
  :slots ())

(setf (get phoxi_camera::GetString :md5sum-) "433bf658b0146fb6dd240f5d5c05b01c")
(setf (get phoxi_camera::GetString :datatype-) "phoxi_camera/GetString")
(setf (get phoxi_camera::GetString :request) phoxi_camera::GetStringRequest)
(setf (get phoxi_camera::GetString :response) phoxi_camera::GetStringResponse)

(defmethod phoxi_camera::GetStringRequest
  (:response () (instance phoxi_camera::GetStringResponse :init)))

(setf (get phoxi_camera::GetStringRequest :md5sum-) "433bf658b0146fb6dd240f5d5c05b01c")
(setf (get phoxi_camera::GetStringRequest :datatype-) "phoxi_camera/GetStringRequest")
(setf (get phoxi_camera::GetStringRequest :definition-)
      "---
string value
string message
bool success
")

(setf (get phoxi_camera::GetStringResponse :md5sum-) "433bf658b0146fb6dd240f5d5c05b01c")
(setf (get phoxi_camera::GetStringResponse :datatype-) "phoxi_camera/GetStringResponse")
(setf (get phoxi_camera::GetStringResponse :definition-)
      "---
string value
string message
bool success
")



(provide :phoxi_camera/GetString "433bf658b0146fb6dd240f5d5c05b01c")


