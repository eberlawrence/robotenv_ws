; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-msg)


;//! \htmlinclude PhoXiSize.msg.html

(cl:defclass <PhoXiSize> (roslisp-msg-protocol:ros-message)
  ((Width
    :reader Width
    :initarg :Width
    :type cl:integer
    :initform 0)
   (Height
    :reader Height
    :initarg :Height
    :type cl:integer
    :initform 0))
)

(cl:defclass PhoXiSize (<PhoXiSize>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PhoXiSize>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PhoXiSize)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-msg:<PhoXiSize> is deprecated: use phoxi_camera-msg:PhoXiSize instead.")))

(cl:ensure-generic-function 'Width-val :lambda-list '(m))
(cl:defmethod Width-val ((m <PhoXiSize>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:Width-val is deprecated.  Use phoxi_camera-msg:Width instead.")
  (Width m))

(cl:ensure-generic-function 'Height-val :lambda-list '(m))
(cl:defmethod Height-val ((m <PhoXiSize>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:Height-val is deprecated.  Use phoxi_camera-msg:Height instead.")
  (Height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PhoXiSize>) ostream)
  "Serializes a message object of type '<PhoXiSize>"
  (cl:let* ((signed (cl:slot-value msg 'Width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PhoXiSize>) istream)
  "Deserializes a message object of type '<PhoXiSize>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PhoXiSize>)))
  "Returns string type for a message object of type '<PhoXiSize>"
  "phoxi_camera/PhoXiSize")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PhoXiSize)))
  "Returns string type for a message object of type 'PhoXiSize"
  "phoxi_camera/PhoXiSize")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PhoXiSize>)))
  "Returns md5sum for a message object of type '<PhoXiSize>"
  "fe4516275dcf5be9aa7db57236a062a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PhoXiSize)))
  "Returns md5sum for a message object of type 'PhoXiSize"
  "fe4516275dcf5be9aa7db57236a062a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PhoXiSize>)))
  "Returns full string definition for message of type '<PhoXiSize>"
  (cl:format cl:nil "int32 Width~%int32 Height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PhoXiSize)))
  "Returns full string definition for message of type 'PhoXiSize"
  (cl:format cl:nil "int32 Width~%int32 Height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PhoXiSize>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PhoXiSize>))
  "Converts a ROS message object to a list"
  (cl:list 'PhoXiSize
    (cl:cons ':Width (Width msg))
    (cl:cons ':Height (Height msg))
))
