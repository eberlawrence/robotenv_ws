; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-msg)


;//! \htmlinclude PosOriObjectsArray.msg.html

(cl:defclass <PosOriObjectsArray> (roslisp-msg-protocol:ros-message)
  ((numObj
    :reader numObj
    :initarg :numObj
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PosOriObjectsArray (<PosOriObjectsArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosOriObjectsArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosOriObjectsArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-msg:<PosOriObjectsArray> is deprecated: use phoxi_camera-msg:PosOriObjectsArray instead.")))

(cl:ensure-generic-function 'numObj-val :lambda-list '(m))
(cl:defmethod numObj-val ((m <PosOriObjectsArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:numObj-val is deprecated.  Use phoxi_camera-msg:numObj instead.")
  (numObj m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <PosOriObjectsArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-msg:data-val is deprecated.  Use phoxi_camera-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosOriObjectsArray>) ostream)
  "Serializes a message object of type '<PosOriObjectsArray>"
  (cl:let* ((signed (cl:slot-value msg 'numObj)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosOriObjectsArray>) istream)
  "Deserializes a message object of type '<PosOriObjectsArray>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numObj) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosOriObjectsArray>)))
  "Returns string type for a message object of type '<PosOriObjectsArray>"
  "phoxi_camera/PosOriObjectsArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosOriObjectsArray)))
  "Returns string type for a message object of type 'PosOriObjectsArray"
  "phoxi_camera/PosOriObjectsArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosOriObjectsArray>)))
  "Returns md5sum for a message object of type '<PosOriObjectsArray>"
  "8106a020340683775f19b85b38f5f037")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosOriObjectsArray)))
  "Returns md5sum for a message object of type 'PosOriObjectsArray"
  "8106a020340683775f19b85b38f5f037")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosOriObjectsArray>)))
  "Returns full string definition for message of type '<PosOriObjectsArray>"
  (cl:format cl:nil "int32 numObj~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosOriObjectsArray)))
  "Returns full string definition for message of type 'PosOriObjectsArray"
  (cl:format cl:nil "int32 numObj~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosOriObjectsArray>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosOriObjectsArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PosOriObjectsArray
    (cl:cons ':numObj (numObj msg))
    (cl:cons ':data (data msg))
))
