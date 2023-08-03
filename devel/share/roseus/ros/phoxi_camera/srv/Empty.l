;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::Empty)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'Empty (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::EMPTY")
  (make-package "PHOXI_CAMERA::EMPTY"))
(unless (find-package "PHOXI_CAMERA::EMPTYREQUEST")
  (make-package "PHOXI_CAMERA::EMPTYREQUEST"))
(unless (find-package "PHOXI_CAMERA::EMPTYRESPONSE")
  (make-package "PHOXI_CAMERA::EMPTYRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::EmptyRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::EmptyRequest
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

(defclass phoxi_camera::EmptyResponse
  :super ros::object
  :slots (_message _success ))

(defmethod phoxi_camera::EmptyResponse
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

(defclass phoxi_camera::Empty
  :super ros::object
  :slots ())

(setf (get phoxi_camera::Empty :md5sum-) "9bf829f07d795d3f9e541a07897da2c4")
(setf (get phoxi_camera::Empty :datatype-) "phoxi_camera/Empty")
(setf (get phoxi_camera::Empty :request) phoxi_camera::EmptyRequest)
(setf (get phoxi_camera::Empty :response) phoxi_camera::EmptyResponse)

(defmethod phoxi_camera::EmptyRequest
  (:response () (instance phoxi_camera::EmptyResponse :init)))

(setf (get phoxi_camera::EmptyRequest :md5sum-) "9bf829f07d795d3f9e541a07897da2c4")
(setf (get phoxi_camera::EmptyRequest :datatype-) "phoxi_camera/EmptyRequest")
(setf (get phoxi_camera::EmptyRequest :definition-)
      "---
string message
bool success
")

(setf (get phoxi_camera::EmptyResponse :md5sum-) "9bf829f07d795d3f9e541a07897da2c4")
(setf (get phoxi_camera::EmptyResponse :datatype-) "phoxi_camera/EmptyResponse")
(setf (get phoxi_camera::EmptyResponse :definition-)
      "---
string message
bool success
")



(provide :phoxi_camera/Empty "9bf829f07d795d3f9e541a07897da2c4")


