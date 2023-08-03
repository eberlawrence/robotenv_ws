; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude GetBool-request.msg.html

(cl:defclass <GetBool-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetBool-request (<GetBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetBool-request> is deprecated: use phoxi_camera-srv:GetBool-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBool-request>) ostream)
  "Serializes a message object of type '<GetBool-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBool-request>) istream)
  "Deserializes a message object of type '<GetBool-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBool-request>)))
  "Returns string type for a service object of type '<GetBool-request>"
  "phoxi_camera/GetBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBool-request)))
  "Returns string type for a service object of type 'GetBool-request"
  "phoxi_camera/GetBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBool-request>)))
  "Returns md5sum for a message object of type '<GetBool-request>"
  "f8b1dd5c3d74b02494854ae2cb789829")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBool-request)))
  "Returns md5sum for a message object of type 'GetBool-request"
  "f8b1dd5c3d74b02494854ae2cb789829")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBool-request>)))
  "Returns full string definition for message of type '<GetBool-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBool-request)))
  "Returns full string definition for message of type 'GetBool-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBool-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBool-request
))
;//! \htmlinclude GetBool-response.msg.html

(cl:defclass <GetBool-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass GetBool-response (<GetBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetBool-response> is deprecated: use phoxi_camera-srv:GetBool-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:value-val is deprecated.  Use phoxi_camera-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBool-response>) ostream)
  "Serializes a message object of type '<GetBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBool-response>) istream)
  "Deserializes a message object of type '<GetBool-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBool-response>)))
  "Returns string type for a service object of type '<GetBool-response>"
  "phoxi_camera/GetBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBool-response)))
  "Returns string type for a service object of type 'GetBool-response"
  "phoxi_camera/GetBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBool-response>)))
  "Returns md5sum for a message object of type '<GetBool-response>"
  "f8b1dd5c3d74b02494854ae2cb789829")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBool-response)))
  "Returns md5sum for a message object of type 'GetBool-response"
  "f8b1dd5c3d74b02494854ae2cb789829")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBool-response>)))
  "Returns full string definition for message of type '<GetBool-response>"
  (cl:format cl:nil "bool value~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBool-response)))
  "Returns full string definition for message of type 'GetBool-response"
  (cl:format cl:nil "bool value~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBool-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBool-response
    (cl:cons ':value (value msg))
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBool)))
  'GetBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBool)))
  'GetBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBool)))
  "Returns string type for a service object of type '<GetBool>"
  "phoxi_camera/GetBool")