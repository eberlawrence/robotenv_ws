; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude ConnectCamera-request.msg.html

(cl:defclass <ConnectCamera-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass ConnectCamera-request (<ConnectCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<ConnectCamera-request> is deprecated: use phoxi_camera-srv:ConnectCamera-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ConnectCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:name-val is deprecated.  Use phoxi_camera-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectCamera-request>) ostream)
  "Serializes a message object of type '<ConnectCamera-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectCamera-request>) istream)
  "Deserializes a message object of type '<ConnectCamera-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectCamera-request>)))
  "Returns string type for a service object of type '<ConnectCamera-request>"
  "phoxi_camera/ConnectCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectCamera-request)))
  "Returns string type for a service object of type 'ConnectCamera-request"
  "phoxi_camera/ConnectCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectCamera-request>)))
  "Returns md5sum for a message object of type '<ConnectCamera-request>"
  "1ea130197b1f2a147f83501adb347895")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectCamera-request)))
  "Returns md5sum for a message object of type 'ConnectCamera-request"
  "1ea130197b1f2a147f83501adb347895")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectCamera-request>)))
  "Returns full string definition for message of type '<ConnectCamera-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectCamera-request)))
  "Returns full string definition for message of type 'ConnectCamera-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectCamera-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectCamera-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude ConnectCamera-response.msg.html

(cl:defclass <ConnectCamera-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ConnectCamera-response (<ConnectCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<ConnectCamera-response> is deprecated: use phoxi_camera-srv:ConnectCamera-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ConnectCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConnectCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectCamera-response>) ostream)
  "Serializes a message object of type '<ConnectCamera-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectCamera-response>) istream)
  "Deserializes a message object of type '<ConnectCamera-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectCamera-response>)))
  "Returns string type for a service object of type '<ConnectCamera-response>"
  "phoxi_camera/ConnectCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectCamera-response)))
  "Returns string type for a service object of type 'ConnectCamera-response"
  "phoxi_camera/ConnectCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectCamera-response>)))
  "Returns md5sum for a message object of type '<ConnectCamera-response>"
  "1ea130197b1f2a147f83501adb347895")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectCamera-response)))
  "Returns md5sum for a message object of type 'ConnectCamera-response"
  "1ea130197b1f2a147f83501adb347895")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectCamera-response>)))
  "Returns full string definition for message of type '<ConnectCamera-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectCamera-response)))
  "Returns full string definition for message of type 'ConnectCamera-response"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectCamera-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectCamera-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConnectCamera)))
  'ConnectCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConnectCamera)))
  'ConnectCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectCamera)))
  "Returns string type for a service object of type '<ConnectCamera>"
  "phoxi_camera/ConnectCamera")