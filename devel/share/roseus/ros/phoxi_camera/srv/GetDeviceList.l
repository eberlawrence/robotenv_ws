;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::GetDeviceList)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'GetDeviceList (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::GETDEVICELIST")
  (make-package "PHOXI_CAMERA::GETDEVICELIST"))
(unless (find-package "PHOXI_CAMERA::GETDEVICELISTREQUEST")
  (make-package "PHOXI_CAMERA::GETDEVICELISTREQUEST"))
(unless (find-package "PHOXI_CAMERA::GETDEVICELISTRESPONSE")
  (make-package "PHOXI_CAMERA::GETDEVICELISTRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::GetDeviceListRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::GetDeviceListRequest
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

(defclass phoxi_camera::GetDeviceListResponse
  :super ros::object
  :slots (_len _out _device_information_list _message _success ))

(defmethod phoxi_camera::GetDeviceListResponse
  (:init
   (&key
    ((:len __len) 0)
    ((:out __out) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:device_information_list __device_information_list) ())
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _len (round __len))
   (setq _out __out)
   (setq _device_information_list __device_information_list)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:len
   (&optional __len)
   (if __len (setq _len __len)) _len)
  (:out
   (&optional __out)
   (if __out (setq _out __out)) _out)
  (:device_information_list
   (&rest __device_information_list)
   (if (keywordp (car __device_information_list))
       (send* _device_information_list __device_information_list)
     (progn
       (if __device_information_list (setq _device_information_list (car __device_information_list)))
       _device_information_list)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int64 _len
    8
    ;; string[] _out
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _out)) 4
    ;; phoxi_camera/DeviceInformation[] _device_information_list
    (apply #'+ (send-all _device_information_list :serialization-length)) 4
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _len
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _len (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _len) (= (length (_len . bv)) 2)) ;; bignum
              (write-long (ash (elt (_len . bv) 0) 0) s)
              (write-long (ash (elt (_len . bv) 1) -1) s))
             ((and (class _len) (= (length (_len . bv)) 1)) ;; big1
              (write-long (elt (_len . bv) 0) s)
              (write-long (if (>= _len 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _len s)(write-long (if (>= _len 0) 0 #xffffffff) s)))
     ;; string[] _out
     (write-long (length _out) s)
     (dolist (elem _out)
       (write-long (length elem) s) (princ elem s)
       )
     ;; phoxi_camera/DeviceInformation[] _device_information_list
     (write-long (length _device_information_list) s)
     (dolist (elem _device_information_list)
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
   ;; int64 _len
#+(or :alpha :irix6 :x86_64)
      (setf _len (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _len (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string[] _out
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _out (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _out i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; phoxi_camera/DeviceInformation[] _device_information_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _device_information_list (let (r) (dotimes (i n) (push (instance phoxi_camera::DeviceInformation :init) r)) r))
     (dolist (elem- _device_information_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::GetDeviceList
  :super ros::object
  :slots ())

(setf (get phoxi_camera::GetDeviceList :md5sum-) "ef887ca1bac751f546c7538e865ddf92")
(setf (get phoxi_camera::GetDeviceList :datatype-) "phoxi_camera/GetDeviceList")
(setf (get phoxi_camera::GetDeviceList :request) phoxi_camera::GetDeviceListRequest)
(setf (get phoxi_camera::GetDeviceList :response) phoxi_camera::GetDeviceListResponse)

(defmethod phoxi_camera::GetDeviceListRequest
  (:response () (instance phoxi_camera::GetDeviceListResponse :init)))

(setf (get phoxi_camera::GetDeviceListRequest :md5sum-) "ef887ca1bac751f546c7538e865ddf92")
(setf (get phoxi_camera::GetDeviceListRequest :datatype-) "phoxi_camera/GetDeviceListRequest")
(setf (get phoxi_camera::GetDeviceListRequest :definition-)
      "---
int64 len
string[] out
phoxi_camera/DeviceInformation[] device_information_list
string message
bool success

================================================================================
MSG: phoxi_camera/DeviceInformation
string name
phoxi_camera/DeviceType type
string hwIdentification
string IPaddress
phoxi_camera/DeviceConnectionStatus status
string firmwareVersion
================================================================================
MSG: phoxi_camera/DeviceType
int32 type
int32 PhoXiScanner = 0
int32 PhoXiCamera = 1
int32 NoValue = 3
================================================================================
MSG: phoxi_camera/DeviceConnectionStatus
int32 status
int32 Unknown = 0
int32 Ready = 1
int32 Occupied = 2
")

(setf (get phoxi_camera::GetDeviceListResponse :md5sum-) "ef887ca1bac751f546c7538e865ddf92")
(setf (get phoxi_camera::GetDeviceListResponse :datatype-) "phoxi_camera/GetDeviceListResponse")
(setf (get phoxi_camera::GetDeviceListResponse :definition-)
      "---
int64 len
string[] out
phoxi_camera/DeviceInformation[] device_information_list
string message
bool success

================================================================================
MSG: phoxi_camera/DeviceInformation
string name
phoxi_camera/DeviceType type
string hwIdentification
string IPaddress
phoxi_camera/DeviceConnectionStatus status
string firmwareVersion
================================================================================
MSG: phoxi_camera/DeviceType
int32 type
int32 PhoXiScanner = 0
int32 PhoXiCamera = 1
int32 NoValue = 3
================================================================================
MSG: phoxi_camera/DeviceConnectionStatus
int32 status
int32 Unknown = 0
int32 Ready = 1
int32 Occupied = 2
")



(provide :phoxi_camera/GetDeviceList "ef887ca1bac751f546c7538e865ddf92")


