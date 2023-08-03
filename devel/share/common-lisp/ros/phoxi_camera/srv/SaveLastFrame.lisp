; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude SaveLastFrame-request.msg.html

(cl:defclass <SaveLastFrame-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass SaveLastFrame-request (<SaveLastFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveLastFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveLastFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SaveLastFrame-request> is deprecated: use phoxi_camera-srv:SaveLastFrame-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <SaveLastFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:file_path-val is deprecated.  Use phoxi_camera-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveLastFrame-request>) ostream)
  "Serializes a message object of type '<SaveLastFrame-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveLastFrame-request>) istream)
  "Deserializes a message object of type '<SaveLastFrame-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveLastFrame-request>)))
  "Returns string type for a service object of type '<SaveLastFrame-request>"
  "phoxi_camera/SaveLastFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLastFrame-request)))
  "Returns string type for a service object of type 'SaveLastFrame-request"
  "phoxi_camera/SaveLastFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveLastFrame-request>)))
  "Returns md5sum for a message object of type '<SaveLastFrame-request>"
  "881a7419fa699b3f5ff01ccdf209643b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveLastFrame-request)))
  "Returns md5sum for a message object of type 'SaveLastFrame-request"
  "881a7419fa699b3f5ff01ccdf209643b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveLastFrame-request>)))
  "Returns full string definition for message of type '<SaveLastFrame-request>"
  (cl:format cl:nil "string file_path     # full file path with file extension, available extensions: *.praw; *.ply; *.ptx; *.tif; *.prawf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveLastFrame-request)))
  "Returns full string definition for message of type 'SaveLastFrame-request"
  (cl:format cl:nil "string file_path     # full file path with file extension, available extensions: *.praw; *.ply; *.ptx; *.tif; *.prawf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveLastFrame-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveLastFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveLastFrame-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude SaveLastFrame-response.msg.html

(cl:defclass <SaveLastFrame-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SaveLastFrame-response (<SaveLastFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveLastFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveLastFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SaveLastFrame-response> is deprecated: use phoxi_camera-srv:SaveLastFrame-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveLastFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveLastFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveLastFrame-response>) ostream)
  "Serializes a message object of type '<SaveLastFrame-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveLastFrame-response>) istream)
  "Deserializes a message object of type '<SaveLastFrame-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveLastFrame-response>)))
  "Returns string type for a service object of type '<SaveLastFrame-response>"
  "phoxi_camera/SaveLastFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLastFrame-response)))
  "Returns string type for a service object of type 'SaveLastFrame-response"
  "phoxi_camera/SaveLastFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveLastFrame-response>)))
  "Returns md5sum for a message object of type '<SaveLastFrame-response>"
  "881a7419fa699b3f5ff01ccdf209643b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveLastFrame-response)))
  "Returns md5sum for a message object of type 'SaveLastFrame-response"
  "881a7419fa699b3f5ff01ccdf209643b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveLastFrame-response>)))
  "Returns full string definition for message of type '<SaveLastFrame-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveLastFrame-response)))
  "Returns full string definition for message of type 'SaveLastFrame-response"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveLastFrame-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveLastFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveLastFrame-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveLastFrame)))
  'SaveLastFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveLastFrame)))
  'SaveLastFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLastFrame)))
  "Returns string type for a service object of type '<SaveLastFrame>"
  "phoxi_camera/SaveLastFrame")