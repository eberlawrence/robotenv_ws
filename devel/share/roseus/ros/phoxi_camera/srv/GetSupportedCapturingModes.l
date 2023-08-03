;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::GetSupportedCapturingModes)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'GetSupportedCapturingModes (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::GETSUPPORTEDCAPTURINGMODES")
  (make-package "PHOXI_CAMERA::GETSUPPORTEDCAPTURINGMODES"))
(unless (find-package "PHOXI_CAMERA::GETSUPPORTEDCAPTURINGMODESREQUEST")
  (make-package "PHOXI_CAMERA::GETSUPPORTEDCAPTURINGMODESREQUEST"))
(unless (find-package "PHOXI_CAMERA::GETSUPPORTEDCAPTURINGMODESRESPONSE")
  (make-package "PHOXI_CAMERA::GETSUPPORTEDCAPTURINGMODESRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::GetSupportedCapturingModesRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::GetSupportedCapturingModesRequest
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

(defclass phoxi_camera::GetSupportedCapturingModesResponse
  :super ros::object
  :slots (_supported_capturing_modes _message _success ))

(defmethod phoxi_camera::GetSupportedCapturingModesResponse
  (:init
   (&key
    ((:supported_capturing_modes __supported_capturing_modes) ())
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _supported_capturing_modes __supported_capturing_modes)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:supported_capturing_modes
   (&rest __supported_capturing_modes)
   (if (keywordp (car __supported_capturing_modes))
       (send* _supported_capturing_modes __supported_capturing_modes)
     (progn
       (if __supported_capturing_modes (setq _supported_capturing_modes (car __supported_capturing_modes)))
       _supported_capturing_modes)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; phoxi_camera/PhoXiSize[] _supported_capturing_modes
    (apply #'+ (send-all _supported_capturing_modes :serialization-length)) 4
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; phoxi_camera/PhoXiSize[] _supported_capturing_modes
     (write-long (length _supported_capturing_modes) s)
     (dolist (elem _supported_capturing_modes)
       (send elem :serialize s)
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; phoxi_camera/PhoXiSize[] _supported_capturing_modes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _supported_capturing_modes (let (r) (dotimes (i n) (push (instance phoxi_camera::PhoXiSize :init) r)) r))
     (dolist (elem- _supported_capturing_modes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::GetSupportedCapturingModes
  :super ros::object
  :slots ())

(setf (get phoxi_camera::GetSupportedCapturingModes :md5sum-) "1c53f107b6664a0a9fe4d1c76bd5c1e0")
(setf (get phoxi_camera::GetSupportedCapturingModes :datatype-) "phoxi_camera/GetSupportedCapturingModes")
(setf (get phoxi_camera::GetSupportedCapturingModes :request) phoxi_camera::GetSupportedCapturingModesRequest)
(setf (get phoxi_camera::GetSupportedCapturingModes :response) phoxi_camera::GetSupportedCapturingModesResponse)

(defmethod phoxi_camera::GetSupportedCapturingModesRequest
  (:response () (instance phoxi_camera::GetSupportedCapturingModesResponse :init)))

(setf (get phoxi_camera::GetSupportedCapturingModesRequest :md5sum-) "1c53f107b6664a0a9fe4d1c76bd5c1e0")
(setf (get phoxi_camera::GetSupportedCapturingModesRequest :datatype-) "phoxi_camera/GetSupportedCapturingModesRequest")
(setf (get phoxi_camera::GetSupportedCapturingModesRequest :definition-)
      "---
PhoXiSize[] supported_capturing_modes
string message
bool success

================================================================================
MSG: phoxi_camera/PhoXiSize
int32 Width
")

(setf (get phoxi_camera::GetSupportedCapturingModesResponse :md5sum-) "1c53f107b6664a0a9fe4d1c76bd5c1e0")
(setf (get phoxi_camera::GetSupportedCapturingModesResponse :datatype-) "phoxi_camera/GetSupportedCapturingModesResponse")
(setf (get phoxi_camera::GetSupportedCapturingModesResponse :definition-)
      "---
PhoXiSize[] supported_capturing_modes
string message
bool success

================================================================================
MSG: phoxi_camera/PhoXiSize
int32 Width
")



(provide :phoxi_camera/GetSupportedCapturingModes "1c53f107b6664a0a9fe4d1c76bd5c1e0")


