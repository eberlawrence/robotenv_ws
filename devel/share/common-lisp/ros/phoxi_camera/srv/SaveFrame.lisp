; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude SaveFrame-request.msg.html

(cl:defclass <SaveFrame-request> (roslisp-msg-protocol:ros-message)
  ((in
    :reader in
    :initarg :in
    :type cl:integer
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass SaveFrame-request (<SaveFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SaveFrame-request> is deprecated: use phoxi_camera-srv:SaveFrame-request instead.")))

(cl:ensure-generic-function 'in-val :lambda-list '(m))
(cl:defmethod in-val ((m <SaveFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:in-val is deprecated.  Use phoxi_camera-srv:in instead.")
  (in m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <SaveFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:path-val is deprecated.  Use phoxi_camera-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveFrame-request>) ostream)
  "Serializes a message object of type '<SaveFrame-request>"
  (cl:let* ((signed (cl:slot-value msg 'in)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveFrame-request>) istream)
  "Deserializes a message object of type '<SaveFrame-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'in) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveFrame-request>)))
  "Returns string type for a service object of type '<SaveFrame-request>"
  "phoxi_camera/SaveFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFrame-request)))
  "Returns string type for a service object of type 'SaveFrame-request"
  "phoxi_camera/SaveFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveFrame-request>)))
  "Returns md5sum for a message object of type '<SaveFrame-request>"
  "7dde036917924a72a5bcf22d6795b22c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveFrame-request)))
  "Returns md5sum for a message object of type 'SaveFrame-request"
  "7dde036917924a72a5bcf22d6795b22c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveFrame-request>)))
  "Returns full string definition for message of type '<SaveFrame-request>"
  (cl:format cl:nil "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveFrame-request)))
  "Returns full string definition for message of type 'SaveFrame-request"
  (cl:format cl:nil "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveFrame-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveFrame-request
    (cl:cons ':in (in msg))
    (cl:cons ':path (path msg))
))
;//! \htmlinclude SaveFrame-response.msg.html

(cl:defclass <SaveFrame-response> (roslisp-msg-protocol:ros-message)
  ((message
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

(cl:defclass SaveFrame-response (<SaveFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SaveFrame-response> is deprecated: use phoxi_camera-srv:SaveFrame-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveFrame-response>) ostream)
  "Serializes a message object of type '<SaveFrame-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveFrame-response>) istream)
  "Deserializes a message object of type '<SaveFrame-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveFrame-response>)))
  "Returns string type for a service object of type '<SaveFrame-response>"
  "phoxi_camera/SaveFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFrame-response)))
  "Returns string type for a service object of type 'SaveFrame-response"
  "phoxi_camera/SaveFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveFrame-response>)))
  "Returns md5sum for a message object of type '<SaveFrame-response>"
  "7dde036917924a72a5bcf22d6795b22c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveFrame-response)))
  "Returns md5sum for a message object of type 'SaveFrame-response"
  "7dde036917924a72a5bcf22d6795b22c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveFrame-response>)))
  "Returns full string definition for message of type '<SaveFrame-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveFrame-response)))
  "Returns full string definition for message of type 'SaveFrame-response"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveFrame-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveFrame-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveFrame)))
  'SaveFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveFrame)))
  'SaveFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFrame)))
  "Returns string type for a service object of type '<SaveFrame>"
  "phoxi_camera/SaveFrame")