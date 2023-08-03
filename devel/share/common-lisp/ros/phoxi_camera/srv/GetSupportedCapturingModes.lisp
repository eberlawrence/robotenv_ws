; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude GetSupportedCapturingModes-request.msg.html

(cl:defclass <GetSupportedCapturingModes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSupportedCapturingModes-request (<GetSupportedCapturingModes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSupportedCapturingModes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSupportedCapturingModes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetSupportedCapturingModes-request> is deprecated: use phoxi_camera-srv:GetSupportedCapturingModes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSupportedCapturingModes-request>) ostream)
  "Serializes a message object of type '<GetSupportedCapturingModes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSupportedCapturingModes-request>) istream)
  "Deserializes a message object of type '<GetSupportedCapturingModes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSupportedCapturingModes-request>)))
  "Returns string type for a service object of type '<GetSupportedCapturingModes-request>"
  "phoxi_camera/GetSupportedCapturingModesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSupportedCapturingModes-request)))
  "Returns string type for a service object of type 'GetSupportedCapturingModes-request"
  "phoxi_camera/GetSupportedCapturingModesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSupportedCapturingModes-request>)))
  "Returns md5sum for a message object of type '<GetSupportedCapturingModes-request>"
  "1c53f107b6664a0a9fe4d1c76bd5c1e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSupportedCapturingModes-request)))
  "Returns md5sum for a message object of type 'GetSupportedCapturingModes-request"
  "1c53f107b6664a0a9fe4d1c76bd5c1e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSupportedCapturingModes-request>)))
  "Returns full string definition for message of type '<GetSupportedCapturingModes-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSupportedCapturingModes-request)))
  "Returns full string definition for message of type 'GetSupportedCapturingModes-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSupportedCapturingModes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSupportedCapturingModes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSupportedCapturingModes-request
))
;//! \htmlinclude GetSupportedCapturingModes-response.msg.html

(cl:defclass <GetSupportedCapturingModes-response> (roslisp-msg-protocol:ros-message)
  ((supported_capturing_modes
    :reader supported_capturing_modes
    :initarg :supported_capturing_modes
    :type (cl:vector phoxi_camera-msg:PhoXiSize)
   :initform (cl:make-array 0 :element-type 'phoxi_camera-msg:PhoXiSize :initial-element (cl:make-instance 'phoxi_camera-msg:PhoXiSize)))
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

(cl:defclass GetSupportedCapturingModes-response (<GetSupportedCapturingModes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSupportedCapturingModes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSupportedCapturingModes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<GetSupportedCapturingModes-response> is deprecated: use phoxi_camera-srv:GetSupportedCapturingModes-response instead.")))

(cl:ensure-generic-function 'supported_capturing_modes-val :lambda-list '(m))
(cl:defmethod supported_capturing_modes-val ((m <GetSupportedCapturingModes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:supported_capturing_modes-val is deprecated.  Use phoxi_camera-srv:supported_capturing_modes instead.")
  (supported_capturing_modes m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetSupportedCapturingModes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetSupportedCapturingModes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSupportedCapturingModes-response>) ostream)
  "Serializes a message object of type '<GetSupportedCapturingModes-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'supported_capturing_modes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'supported_capturing_modes))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSupportedCapturingModes-response>) istream)
  "Deserializes a message object of type '<GetSupportedCapturingModes-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'supported_capturing_modes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'supported_capturing_modes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'phoxi_camera-msg:PhoXiSize))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSupportedCapturingModes-response>)))
  "Returns string type for a service object of type '<GetSupportedCapturingModes-response>"
  "phoxi_camera/GetSupportedCapturingModesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSupportedCapturingModes-response)))
  "Returns string type for a service object of type 'GetSupportedCapturingModes-response"
  "phoxi_camera/GetSupportedCapturingModesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSupportedCapturingModes-response>)))
  "Returns md5sum for a message object of type '<GetSupportedCapturingModes-response>"
  "1c53f107b6664a0a9fe4d1c76bd5c1e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSupportedCapturingModes-response)))
  "Returns md5sum for a message object of type 'GetSupportedCapturingModes-response"
  "1c53f107b6664a0a9fe4d1c76bd5c1e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSupportedCapturingModes-response>)))
  "Returns full string definition for message of type '<GetSupportedCapturingModes-response>"
  (cl:format cl:nil "PhoXiSize[] supported_capturing_modes~%string message~%bool success~%~%================================================================================~%MSG: phoxi_camera/PhoXiSize~%int32 Width~%int32 Height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSupportedCapturingModes-response)))
  "Returns full string definition for message of type 'GetSupportedCapturingModes-response"
  (cl:format cl:nil "PhoXiSize[] supported_capturing_modes~%string message~%bool success~%~%================================================================================~%MSG: phoxi_camera/PhoXiSize~%int32 Width~%int32 Height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSupportedCapturingModes-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'supported_capturing_modes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSupportedCapturingModes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSupportedCapturingModes-response
    (cl:cons ':supported_capturing_modes (supported_capturing_modes msg))
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSupportedCapturingModes)))
  'GetSupportedCapturingModes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSupportedCapturingModes)))
  'GetSupportedCapturingModes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSupportedCapturingModes)))
  "Returns string type for a service object of type '<GetSupportedCapturingModes>"
  "phoxi_camera/GetSupportedCapturingModes")