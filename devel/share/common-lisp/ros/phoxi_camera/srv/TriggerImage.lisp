; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude TriggerImage-request.msg.html

(cl:defclass <TriggerImage-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TriggerImage-request (<TriggerImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<TriggerImage-request> is deprecated: use phoxi_camera-srv:TriggerImage-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerImage-request>) ostream)
  "Serializes a message object of type '<TriggerImage-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerImage-request>) istream)
  "Deserializes a message object of type '<TriggerImage-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerImage-request>)))
  "Returns string type for a service object of type '<TriggerImage-request>"
  "phoxi_camera/TriggerImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerImage-request)))
  "Returns string type for a service object of type 'TriggerImage-request"
  "phoxi_camera/TriggerImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerImage-request>)))
  "Returns md5sum for a message object of type '<TriggerImage-request>"
  "18755a57b4bb8720dff0c94fc28df6e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerImage-request)))
  "Returns md5sum for a message object of type 'TriggerImage-request"
  "18755a57b4bb8720dff0c94fc28df6e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerImage-request>)))
  "Returns full string definition for message of type '<TriggerImage-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerImage-request)))
  "Returns full string definition for message of type 'TriggerImage-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerImage-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerImage-request
))
;//! \htmlinclude TriggerImage-response.msg.html

(cl:defclass <TriggerImage-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
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

(cl:defclass TriggerImage-response (<TriggerImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<TriggerImage-response> is deprecated: use phoxi_camera-srv:TriggerImage-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TriggerImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:id-val is deprecated.  Use phoxi_camera-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TriggerImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TriggerImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerImage-response>) ostream)
  "Serializes a message object of type '<TriggerImage-response>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerImage-response>) istream)
  "Deserializes a message object of type '<TriggerImage-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerImage-response>)))
  "Returns string type for a service object of type '<TriggerImage-response>"
  "phoxi_camera/TriggerImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerImage-response)))
  "Returns string type for a service object of type 'TriggerImage-response"
  "phoxi_camera/TriggerImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerImage-response>)))
  "Returns md5sum for a message object of type '<TriggerImage-response>"
  "18755a57b4bb8720dff0c94fc28df6e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerImage-response)))
  "Returns md5sum for a message object of type 'TriggerImage-response"
  "18755a57b4bb8720dff0c94fc28df6e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerImage-response>)))
  "Returns full string definition for message of type '<TriggerImage-response>"
  (cl:format cl:nil "int32 id            #id of taken scan~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerImage-response)))
  "Returns full string definition for message of type 'TriggerImage-response"
  (cl:format cl:nil "int32 id            #id of taken scan~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerImage-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerImage-response
    (cl:cons ':id (id msg))
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TriggerImage)))
  'TriggerImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TriggerImage)))
  'TriggerImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerImage)))
  "Returns string type for a service object of type '<TriggerImage>"
  "phoxi_camera/TriggerImage")