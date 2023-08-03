; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-msg)


;//! \htmlinclude DeviceConnectionStatus.msg.html

(cl:defclass <DeviceConnectionStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass DeviceConnectionStatus (<DeviceConnectionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeviceConnectionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeviceConnectionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-msg:<DeviceConnectionStatus> is deprecated: use phoxi_camera-msg:DeviceConnectionStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DeviceConnectionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:status-val is deprecated.  Use phoxi_camera-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DeviceConnectionStatus>)))
    "Constants for message type '<DeviceConnectionStatus>"
  '((:UNKNOWN . 0)
    (:READY . 1)
    (:OCCUPIED . 2)
    (:STARTING . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DeviceConnectionStatus)))
    "Constants for message type 'DeviceConnectionStatus"
  '((:UNKNOWN . 0)
    (:READY . 1)
    (:OCCUPIED . 2)
    (:STARTING . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeviceConnectionStatus>) ostream)
  "Serializes a message object of type '<DeviceConnectionStatus>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeviceConnectionStatus>) istream)
  "Deserializes a message object of type '<DeviceConnectionStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeviceConnectionStatus>)))
  "Returns string type for a message object of type '<DeviceConnectionStatus>"
  "phoxi_camera/DeviceConnectionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeviceConnectionStatus)))
  "Returns string type for a message object of type 'DeviceConnectionStatus"
  "phoxi_camera/DeviceConnectionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeviceConnectionStatus>)))
  "Returns md5sum for a message object of type '<DeviceConnectionStatus>"
  "2c3107e3d7b088e448117fa0903f7a92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeviceConnectionStatus)))
  "Returns md5sum for a message object of type 'DeviceConnectionStatus"
  "2c3107e3d7b088e448117fa0903f7a92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeviceConnectionStatus>)))
  "Returns full string definition for message of type '<DeviceConnectionStatus>"
  (cl:format cl:nil "int32 status~%int32 Unknown = 0~%int32 Ready = 1~%int32 Occupied = 2~%int32 Starting = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeviceConnectionStatus)))
  "Returns full string definition for message of type 'DeviceConnectionStatus"
  (cl:format cl:nil "int32 status~%int32 Unknown = 0~%int32 Ready = 1~%int32 Occupied = 2~%int32 Starting = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeviceConnectionStatus>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeviceConnectionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DeviceConnectionStatus
    (cl:cons ':status (status msg))
))
