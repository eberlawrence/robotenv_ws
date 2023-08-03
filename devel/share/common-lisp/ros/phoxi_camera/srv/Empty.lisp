; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude Empty-request.msg.html

(cl:defclass <Empty-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Empty-request (<Empty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Empty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Empty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<Empty-request> is deprecated: use phoxi_camera-srv:Empty-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Empty-request>) ostream)
  "Serializes a message object of type '<Empty-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Empty-request>) istream)
  "Deserializes a message object of type '<Empty-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Empty-request>)))
  "Returns string type for a service object of type '<Empty-request>"
  "phoxi_camera/EmptyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty-request)))
  "Returns string type for a service object of type 'Empty-request"
  "phoxi_camera/EmptyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Empty-request>)))
  "Returns md5sum for a message object of type '<Empty-request>"
  "9bf829f07d795d3f9e541a07897da2c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Empty-request)))
  "Returns md5sum for a message object of type 'Empty-request"
  "9bf829f07d795d3f9e541a07897da2c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Empty-request>)))
  "Returns full string definition for message of type '<Empty-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Empty-request)))
  "Returns full string definition for message of type 'Empty-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Empty-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Empty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Empty-request
))
;//! \htmlinclude Empty-response.msg.html

(cl:defclass <Empty-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Empty-response (<Empty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Empty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Empty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<Empty-response> is deprecated: use phoxi_camera-srv:Empty-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Empty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Empty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Empty-response>) ostream)
  "Serializes a message object of type '<Empty-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Empty-response>) istream)
  "Deserializes a message object of type '<Empty-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Empty-response>)))
  "Returns string type for a service object of type '<Empty-response>"
  "phoxi_camera/EmptyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty-response)))
  "Returns string type for a service object of type 'Empty-response"
  "phoxi_camera/EmptyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Empty-response>)))
  "Returns md5sum for a message object of type '<Empty-response>"
  "9bf829f07d795d3f9e541a07897da2c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Empty-response)))
  "Returns md5sum for a message object of type 'Empty-response"
  "9bf829f07d795d3f9e541a07897da2c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Empty-response>)))
  "Returns full string definition for message of type '<Empty-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Empty-response)))
  "Returns full string definition for message of type 'Empty-response"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Empty-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Empty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Empty-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Empty)))
  'Empty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Empty)))
  'Empty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty)))
  "Returns string type for a service object of type '<Empty>"
  "phoxi_camera/Empty")