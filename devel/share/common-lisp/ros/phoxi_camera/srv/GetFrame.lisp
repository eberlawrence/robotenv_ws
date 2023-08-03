; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude GetFrame-request.msg.html

(cl:defclass <GetFrame-request> (roslisp-msg-protocol:ros-message)
  ((in
    :reader in
    :initarg :in
    :type cl:integer
    :initform 0))
)

(cl:defclass GetFrame-request (<GetFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetFrame-request> is deprecated: use phoxi_camera-srv:GetFrame-request instead.")))

(cl:ensure-generic-function 'in-val :lambda-list '(m))
(cl:defmethod in-val ((m <GetFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:in-val is deprecated.  Use phoxi_camera-srv:in instead.")
  (in m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrame-request>) ostream)
  "Serializes a message object of type '<GetFrame-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrame-request>) istream)
  "Deserializes a message object of type '<GetFrame-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrame-request>)))
  "Returns string type for a service object of type '<GetFrame-request>"
  "phoxi_camera/GetFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrame-request)))
  "Returns string type for a service object of type 'GetFrame-request"
  "phoxi_camera/GetFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrame-request>)))
  "Returns md5sum for a message object of type '<GetFrame-request>"
  "51ed6a27e8851d6116d5fe59ddb47078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrame-request)))
  "Returns md5sum for a message object of type 'GetFrame-request"
  "51ed6a27e8851d6116d5fe59ddb47078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrame-request>)))
  "Returns full string definition for message of type '<GetFrame-request>"
  (cl:format cl:nil "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrame-request)))
  "Returns full string definition for message of type 'GetFrame-request"
  (cl:format cl:nil "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrame-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrame-request
    (cl:cons ':in (in msg))
))
;//! \htmlinclude GetFrame-response.msg.html

(cl:defclass <GetFrame-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetFrame-response (<GetFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetFrame-response> is deprecated: use phoxi_camera-srv:GetFrame-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrame-response>) ostream)
  "Serializes a message object of type '<GetFrame-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrame-response>) istream)
  "Deserializes a message object of type '<GetFrame-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrame-response>)))
  "Returns string type for a service object of type '<GetFrame-response>"
  "phoxi_camera/GetFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrame-response)))
  "Returns string type for a service object of type 'GetFrame-response"
  "phoxi_camera/GetFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrame-response>)))
  "Returns md5sum for a message object of type '<GetFrame-response>"
  "51ed6a27e8851d6116d5fe59ddb47078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrame-response)))
  "Returns md5sum for a message object of type 'GetFrame-response"
  "51ed6a27e8851d6116d5fe59ddb47078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrame-response>)))
  "Returns full string definition for message of type '<GetFrame-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrame-response)))
  "Returns full string definition for message of type 'GetFrame-response"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrame-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrame-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFrame)))
  'GetFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFrame)))
  'GetFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrame)))
  "Returns string type for a service object of type '<GetFrame>"
  "phoxi_camera/GetFrame")