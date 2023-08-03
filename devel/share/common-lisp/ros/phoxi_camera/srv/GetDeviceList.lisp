; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude GetDeviceList-request.msg.html

(cl:defclass <GetDeviceList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDeviceList-request (<GetDeviceList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetDeviceList-request> is deprecated: use phoxi_camera-srv:GetDeviceList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceList-request>) ostream)
  "Serializes a message object of type '<GetDeviceList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceList-request>) istream)
  "Deserializes a message object of type '<GetDeviceList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceList-request>)))
  "Returns string type for a service object of type '<GetDeviceList-request>"
  "phoxi_camera/GetDeviceListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceList-request)))
  "Returns string type for a service object of type 'GetDeviceList-request"
  "phoxi_camera/GetDeviceListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceList-request>)))
  "Returns md5sum for a message object of type '<GetDeviceList-request>"
  "ef887ca1bac751f546c7538e865ddf92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceList-request)))
  "Returns md5sum for a message object of type 'GetDeviceList-request"
  "ef887ca1bac751f546c7538e865ddf92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceList-request>)))
  "Returns full string definition for message of type '<GetDeviceList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceList-request)))
  "Returns full string definition for message of type 'GetDeviceList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceList-request
))
;//! \htmlinclude GetDeviceList-response.msg.html

(cl:defclass <GetDeviceList-response> (roslisp-msg-protocol:ros-message)
  ((len
    :reader len
    :initarg :len
    :type cl:integer
    :initform 0)
   (out
    :reader out
    :initarg :out
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (device_information_list
    :reader device_information_list
    :initarg :device_information_list
    :type (cl:vector phoxi_camera-msg:DeviceInformation)
   :initform (cl:make-array 0 :element-type 'phoxi_camera-msg:DeviceInformation :initial-element (cl:make-instance 'phoxi_camera-msg:DeviceInformation)))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetDeviceList-response (<GetDeviceList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetDeviceList-response> is deprecated: use phoxi_camera-srv:GetDeviceList-response instead.")))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <GetDeviceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:len-val is deprecated.  Use phoxi_camera-srv:len instead.")
  (len m))

(cl:ensure-generic-function 'out-val :lambda-list '(m))
(cl:defmethod out-val ((m <GetDeviceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:out-val is deprecated.  Use phoxi_camera-srv:out instead.")
  (out m))

(cl:ensure-generic-function 'device_information_list-val :lambda-list '(m))
(cl:defmethod device_information_list-val ((m <GetDeviceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:device_information_list-val is deprecated.  Use phoxi_camera-srv:device_information_list instead.")
  (device_information_list m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetDeviceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetDeviceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceList-response>) ostream)
  "Serializes a message object of type '<GetDeviceList-response>"
  (cl:let* ((signed (cl:slot-value msg 'len)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'out))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'device_information_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'device_information_list))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceList-response>) istream)
  "Deserializes a message object of type '<GetDeviceList-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'len) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'out) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'out)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'device_information_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'device_information_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'phoxi_camera-msg:DeviceInformation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceList-response>)))
  "Returns string type for a service object of type '<GetDeviceList-response>"
  "phoxi_camera/GetDeviceListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceList-response)))
  "Returns string type for a service object of type 'GetDeviceList-response"
  "phoxi_camera/GetDeviceListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceList-response>)))
  "Returns md5sum for a message object of type '<GetDeviceList-response>"
  "ef887ca1bac751f546c7538e865ddf92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceList-response)))
  "Returns md5sum for a message object of type 'GetDeviceList-response"
  "ef887ca1bac751f546c7538e865ddf92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceList-response>)))
  "Returns full string definition for message of type '<GetDeviceList-response>"
  (cl:format cl:nil "int64 len~%string[] out~%phoxi_camera/DeviceInformation[] device_information_list~%string message~%bool success~%~%================================================================================~%MSG: phoxi_camera/DeviceInformation~%string name~%phoxi_camera/DeviceType type~%string hwIdentification~%string IPaddress~%phoxi_camera/DeviceConnectionStatus status~%string firmwareVersion~%================================================================================~%MSG: phoxi_camera/DeviceType~%int32 type~%int32 PhoXiScanner = 0~%int32 PhoXiCamera = 1~%int32 NoValue = 3~%================================================================================~%MSG: phoxi_camera/DeviceConnectionStatus~%int32 status~%int32 Unknown = 0~%int32 Ready = 1~%int32 Occupied = 2~%int32 Starting = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceList-response)))
  "Returns full string definition for message of type 'GetDeviceList-response"
  (cl:format cl:nil "int64 len~%string[] out~%phoxi_camera/DeviceInformation[] device_information_list~%string message~%bool success~%~%================================================================================~%MSG: phoxi_camera/DeviceInformation~%string name~%phoxi_camera/DeviceType type~%string hwIdentification~%string IPaddress~%phoxi_camera/DeviceConnectionStatus status~%string firmwareVersion~%================================================================================~%MSG: phoxi_camera/DeviceType~%int32 type~%int32 PhoXiScanner = 0~%int32 PhoXiCamera = 1~%int32 NoValue = 3~%================================================================================~%MSG: phoxi_camera/DeviceConnectionStatus~%int32 status~%int32 Unknown = 0~%int32 Ready = 1~%int32 Occupied = 2~%int32 Starting = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceList-response>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'out) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'device_information_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceList-response
    (cl:cons ':len (len msg))
    (cl:cons ':out (out msg))
    (cl:cons ':device_information_list (device_information_list msg))
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeviceList)))
  'GetDeviceList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeviceList)))
  'GetDeviceList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceList)))
  "Returns string type for a service object of type '<GetDeviceList>"
  "phoxi_camera/GetDeviceList")