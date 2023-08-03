; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude GetHardwareIdentification-request.msg.html

(cl:defclass <GetHardwareIdentification-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetHardwareIdentification-request (<GetHardwareIdentification-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHardwareIdentification-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHardwareIdentification-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetHardwareIdentification-request> is deprecated: use phoxi_camera-srv:GetHardwareIdentification-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHardwareIdentification-request>) ostream)
  "Serializes a message object of type '<GetHardwareIdentification-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHardwareIdentification-request>) istream)
  "Deserializes a message object of type '<GetHardwareIdentification-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHardwareIdentification-request>)))
  "Returns string type for a service object of type '<GetHardwareIdentification-request>"
  "phoxi_camera/GetHardwareIdentificationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHardwareIdentification-request)))
  "Returns string type for a service object of type 'GetHardwareIdentification-request"
  "phoxi_camera/GetHardwareIdentificationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHardwareIdentification-request>)))
  "Returns md5sum for a message object of type '<GetHardwareIdentification-request>"
  "7c34903a74c1048da945ec8ca8cfa315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHardwareIdentification-request)))
  "Returns md5sum for a message object of type 'GetHardwareIdentification-request"
  "7c34903a74c1048da945ec8ca8cfa315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHardwareIdentification-request>)))
  "Returns full string definition for message of type '<GetHardwareIdentification-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHardwareIdentification-request)))
  "Returns full string definition for message of type 'GetHardwareIdentification-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHardwareIdentification-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHardwareIdentification-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHardwareIdentification-request
))
;//! \htmlinclude GetHardwareIdentification-response.msg.html

(cl:defclass <GetHardwareIdentification-response> (roslisp-msg-protocol:ros-message)
  ((hardware_identification
    :reader hardware_identification
    :initarg :hardware_identification
    :type cl:string
    :initform "")
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

(cl:defclass GetHardwareIdentification-response (<GetHardwareIdentification-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHardwareIdentification-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHardwareIdentification-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetHardwareIdentification-response> is deprecated: use phoxi_camera-srv:GetHardwareIdentification-response instead.")))

(cl:ensure-generic-function 'hardware_identification-val :lambda-list '(m))
(cl:defmethod hardware_identification-val ((m <GetHardwareIdentification-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:hardware_identification-val is deprecated.  Use phoxi_camera-srv:hardware_identification instead.")
  (hardware_identification m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetHardwareIdentification-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetHardwareIdentification-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHardwareIdentification-response>) ostream)
  "Serializes a message object of type '<GetHardwareIdentification-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_identification))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_identification))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHardwareIdentification-response>) istream)
  "Deserializes a message object of type '<GetHardwareIdentification-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_identification) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_identification) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHardwareIdentification-response>)))
  "Returns string type for a service object of type '<GetHardwareIdentification-response>"
  "phoxi_camera/GetHardwareIdentificationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHardwareIdentification-response)))
  "Returns string type for a service object of type 'GetHardwareIdentification-response"
  "phoxi_camera/GetHardwareIdentificationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHardwareIdentification-response>)))
  "Returns md5sum for a message object of type '<GetHardwareIdentification-response>"
  "7c34903a74c1048da945ec8ca8cfa315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHardwareIdentification-response)))
  "Returns md5sum for a message object of type 'GetHardwareIdentification-response"
  "7c34903a74c1048da945ec8ca8cfa315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHardwareIdentification-response>)))
  "Returns full string definition for message of type '<GetHardwareIdentification-response>"
  (cl:format cl:nil "string hardware_identification~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHardwareIdentification-response)))
  "Returns full string definition for message of type 'GetHardwareIdentification-response"
  (cl:format cl:nil "string hardware_identification~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHardwareIdentification-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hardware_identification))
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHardwareIdentification-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHardwareIdentification-response
    (cl:cons ':hardware_identification (hardware_identification msg))
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHardwareIdentification)))
  'GetHardwareIdentification-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHardwareIdentification)))
  'GetHardwareIdentification-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHardwareIdentification)))
  "Returns string type for a service object of type '<GetHardwareIdentification>"
  "phoxi_camera/GetHardwareIdentification")