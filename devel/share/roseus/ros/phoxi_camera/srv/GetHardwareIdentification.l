;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::GetHardwareIdentification)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'GetHardwareIdentification (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::GETHARDWAREIDENTIFICATION")
  (make-package "PHOXI_CAMERA::GETHARDWAREIDENTIFICATION"))
(unless (find-package "PHOXI_CAMERA::GETHARDWAREIDENTIFICATIONREQUEST")
  (make-package "PHOXI_CAMERA::GETHARDWAREIDENTIFICATIONREQUEST"))
(unless (find-package "PHOXI_CAMERA::GETHARDWAREIDENTIFICATIONRESPONSE")
  (make-package "PHOXI_CAMERA::GETHARDWAREIDENTIFICATIONRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::GetHardwareIdentificationRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::GetHardwareIdentificationRequest
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

(defclass phoxi_camera::GetHardwareIdentificationResponse
  :super ros::object
  :slots (_hardware_identification _message _success ))

(defmethod phoxi_camera::GetHardwareIdentificationResponse
  (:init
   (&key
    ((:hardware_identification __hardware_identification) "")
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _hardware_identification (string __hardware_identification))
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:hardware_identification
   (&optional __hardware_identification)
   (if __hardware_identification (setq _hardware_identification __hardware_identification)) _hardware_identification)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _hardware_identification
    4 (length _hardware_identification)
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _hardware_identification
       (write-long (length _hardware_identification) s) (princ _hardware_identification s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _hardware_identification
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_identification (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::GetHardwareIdentification
  :super ros::object
  :slots ())

(setf (get phoxi_camera::GetHardwareIdentification :md5sum-) "7c34903a74c1048da945ec8ca8cfa315")
(setf (get phoxi_camera::GetHardwareIdentification :datatype-) "phoxi_camera/GetHardwareIdentification")
(setf (get phoxi_camera::GetHardwareIdentification :request) phoxi_camera::GetHardwareIdentificationRequest)
(setf (get phoxi_camera::GetHardwareIdentification :response) phoxi_camera::GetHardwareIdentificationResponse)

(defmethod phoxi_camera::GetHardwareIdentificationRequest
  (:response () (instance phoxi_camera::GetHardwareIdentificationResponse :init)))

(setf (get phoxi_camera::GetHardwareIdentificationRequest :md5sum-) "7c34903a74c1048da945ec8ca8cfa315")
(setf (get phoxi_camera::GetHardwareIdentificationRequest :datatype-) "phoxi_camera/GetHardwareIdentificationRequest")
(setf (get phoxi_camera::GetHardwareIdentificationRequest :definition-)
      "---
string hardware_identification
string message
bool success
")

(setf (get phoxi_camera::GetHardwareIdentificationResponse :md5sum-) "7c34903a74c1048da945ec8ca8cfa315")
(setf (get phoxi_camera::GetHardwareIdentificationResponse :datatype-) "phoxi_camera/GetHardwareIdentificationResponse")
(setf (get phoxi_camera::GetHardwareIdentificationResponse :definition-)
      "---
string hardware_identification
string message
bool success
")



(provide :phoxi_camera/GetHardwareIdentification "7c34903a74c1048da945ec8ca8cfa315")


