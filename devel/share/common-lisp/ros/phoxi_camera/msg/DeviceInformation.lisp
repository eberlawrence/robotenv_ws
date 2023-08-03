; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-msg)


;//! \htmlinclude DeviceInformation.msg.html

(cl:defclass <DeviceInformation> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type phoxi_camera-msg:DeviceType
    :initform (cl:make-instance 'phoxi_camera-msg:DeviceType))
   (hwIdentification
    :reader hwIdentification
    :initarg :hwIdentification
    :type cl:string
    :initform "")
   (IPaddress
    :reader IPaddress
    :initarg :IPaddress
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type phoxi_camera-msg:DeviceConnectionStatus
    :initform (cl:make-instance 'phoxi_camera-msg:DeviceConnectionStatus))
   (firmwareVersion
    :reader firmwareVersion
    :initarg :firmwareVersion
    :type cl:string
    :initform ""))
)

(cl:defclass DeviceInformation (<DeviceInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeviceInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeviceInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-msg:<DeviceInformation> is deprecated: use phoxi_camera-msg:DeviceInformation instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeviceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:name-val is deprecated.  Use phoxi_camera-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DeviceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:type-val is deprecated.  Use phoxi_camera-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'hwIdentification-val :lambda-list '(m))
(cl:defmethod hwIdentification-val ((m <DeviceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:hwIdentification-val is deprecated.  Use phoxi_camera-msg:hwIdentification instead.")
  (hwIdentification m))

(cl:ensure-generic-function 'IPaddress-val :lambda-list '(m))
(cl:defmethod IPaddress-val ((m <DeviceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:IPaddress-val is deprecated.  Use phoxi_camera-msg:IPaddress instead.")
  (IPaddress m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DeviceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:status-val is deprecated.  Use phoxi_camera-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'firmwareVersion-val :lambda-list '(m))
(cl:defmethod firmwareVersion-val ((m <DeviceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:firmwareVersion-val is deprecated.  Use phoxi_camera-msg:firmwareVersion instead.")
  (firmwareVersion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeviceInformation>) ostream)
  "Serializes a message object of type '<DeviceInformation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hwIdentification))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hwIdentification))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'IPaddress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'IPaddress))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmwareVersion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmwareVersion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeviceInformation>) istream)
  "Deserializes a message object of type '<DeviceInformation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hwIdentification) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hwIdentification) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'IPaddress) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'IPaddress) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmwareVersion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmwareVersion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeviceInformation>)))
  "Returns string type for a message object of type '<DeviceInformation>"
  "phoxi_camera/DeviceInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeviceInformation)))
  "Returns string type for a message object of type 'DeviceInformation"
  "phoxi_camera/DeviceInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeviceInformation>)))
  "Returns md5sum for a message object of type '<DeviceInformation>"
  "0b0bc4d79cc2229b2b1a6277b66a3576")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeviceInformation)))
  "Returns md5sum for a message object of type 'DeviceInformation"
  "0b0bc4d79cc2229b2b1a6277b66a3576")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeviceInformation>)))
  "Returns full string definition for message of type '<DeviceInformation>"
  (cl:format cl:nil "string name~%phoxi_camera/DeviceType type~%string hwIdentification~%string IPaddress~%phoxi_camera/DeviceConnectionStatus status~%string firmwareVersion~%================================================================================~%MSG: phoxi_camera/DeviceType~%int32 type~%int32 PhoXiScanner = 0~%int32 PhoXiCamera = 1~%int32 NoValue = 3~%================================================================================~%MSG: phoxi_camera/DeviceConnectionStatus~%int32 status~%int32 Unknown = 0~%int32 Ready = 1~%int32 Occupied = 2~%int32 Starting = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeviceInformation)))
  "Returns full string definition for message of type 'DeviceInformation"
  (cl:format cl:nil "string name~%phoxi_camera/DeviceType type~%string hwIdentification~%string IPaddress~%phoxi_camera/DeviceConnectionStatus status~%string firmwareVersion~%================================================================================~%MSG: phoxi_camera/DeviceType~%int32 type~%int32 PhoXiScanner = 0~%int32 PhoXiCamera = 1~%int32 NoValue = 3~%================================================================================~%MSG: phoxi_camera/DeviceConnectionStatus~%int32 status~%int32 Unknown = 0~%int32 Ready = 1~%int32 Occupied = 2~%int32 Starting = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeviceInformation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'hwIdentification))
     4 (cl:length (cl:slot-value msg 'IPaddress))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'firmwareVersion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeviceInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'DeviceInformation
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':hwIdentification (hwIdentification msg))
    (cl:cons ':IPaddress (IPaddress msg))
    (cl:cons ':status (status msg))
    (cl:cons ':firmwareVersion (firmwareVersion msg))
))
