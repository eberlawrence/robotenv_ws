; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-msg)


;//! \htmlinclude DeviceType.msg.html

(cl:defclass <DeviceType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass DeviceType (<DeviceType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeviceType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeviceType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-msg:<DeviceType> is deprecated: use phoxi_camera-msg:DeviceType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DeviceType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:type-val is deprecated.  Use phoxi_camera-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DeviceType>)))
    "Constants for message type '<DeviceType>"
  '((:PHOXISCANNER . 0)
    (:PHOXICAMERA . 1)
    (:NOVALUE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DeviceType)))
    "Constants for message type 'DeviceType"
  '((:PHOXISCANNER . 0)
    (:PHOXICAMERA . 1)
    (:NOVALUE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeviceType>) ostream)
  "Serializes a message object of type '<DeviceType>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeviceType>) istream)
  "Deserializes a message object of type '<DeviceType>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeviceType>)))
  "Returns string type for a message object of type '<DeviceType>"
  "phoxi_camera/DeviceType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeviceType)))
  "Returns string type for a message object of type 'DeviceType"
  "phoxi_camera/DeviceType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeviceType>)))
  "Returns md5sum for a message object of type '<DeviceType>"
  "5f59591700edcd2d9a225ab5c76ace65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeviceType)))
  "Returns md5sum for a message object of type 'DeviceType"
  "5f59591700edcd2d9a225ab5c76ace65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeviceType>)))
  "Returns full string definition for message of type '<DeviceType>"
  (cl:format cl:nil "int32 type~%int32 PhoXiScanner = 0~%int32 PhoXiCamera = 1~%int32 NoValue = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeviceType)))
  "Returns full string definition for message of type 'DeviceType"
  (cl:format cl:nil "int32 type~%int32 PhoXiScanner = 0~%int32 PhoXiCamera = 1~%int32 NoValue = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeviceType>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeviceType>))
  "Converts a ROS message object to a list"
  (cl:list 'DeviceType
    (cl:cons ':type (type msg))
))
