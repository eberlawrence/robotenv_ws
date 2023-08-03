; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude SetCoordinatesSpace-request.msg.html

(cl:defclass <SetCoordinatesSpace-request> (roslisp-msg-protocol:ros-message)
  ((coordinates_space
    :reader coordinates_space
    :initarg :coordinates_space
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetCoordinatesSpace-request (<SetCoordinatesSpace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCoordinatesSpace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCoordinatesSpace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SetCoordinatesSpace-request> is deprecated: use phoxi_camera-srv:SetCoordinatesSpace-request instead.")))

(cl:ensure-generic-function 'coordinates_space-val :lambda-list '(m))
(cl:defmethod coordinates_space-val ((m <SetCoordinatesSpace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:coordinates_space-val is deprecated.  Use phoxi_camera-srv:coordinates_space instead.")
  (coordinates_space m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCoordinatesSpace-request>) ostream)
  "Serializes a message object of type '<SetCoordinatesSpace-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinates_space)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCoordinatesSpace-request>) istream)
  "Deserializes a message object of type '<SetCoordinatesSpace-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinates_space)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCoordinatesSpace-request>)))
  "Returns string type for a service object of type '<SetCoordinatesSpace-request>"
  "phoxi_camera/SetCoordinatesSpaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCoordinatesSpace-request)))
  "Returns string type for a service object of type 'SetCoordinatesSpace-request"
  "phoxi_camera/SetCoordinatesSpaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCoordinatesSpace-request>)))
  "Returns md5sum for a message object of type '<SetCoordinatesSpace-request>"
  "6471d6222bbb561b60df31b08bec6e6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCoordinatesSpace-request)))
  "Returns md5sum for a message object of type 'SetCoordinatesSpace-request"
  "6471d6222bbb561b60df31b08bec6e6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCoordinatesSpace-request>)))
  "Returns full string definition for message of type '<SetCoordinatesSpace-request>"
  (cl:format cl:nil "uint8 coordinates_space  # NoValue = 0, CameraSpace = 1, MarkerSpace = 3, RobotSpace = 4, CustomSpace = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCoordinatesSpace-request)))
  "Returns full string definition for message of type 'SetCoordinatesSpace-request"
  (cl:format cl:nil "uint8 coordinates_space  # NoValue = 0, CameraSpace = 1, MarkerSpace = 3, RobotSpace = 4, CustomSpace = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCoordinatesSpace-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCoordinatesSpace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCoordinatesSpace-request
    (cl:cons ':coordinates_space (coordinates_space msg))
))
;//! \htmlinclude SetCoordinatesSpace-response.msg.html

(cl:defclass <SetCoordinatesSpace-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetCoordinatesSpace-response (<SetCoordinatesSpace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCoordinatesSpace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCoordinatesSpace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SetCoordinatesSpace-response> is deprecated: use phoxi_camera-srv:SetCoordinatesSpace-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCoordinatesSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetCoordinatesSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCoordinatesSpace-response>) ostream)
  "Serializes a message object of type '<SetCoordinatesSpace-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCoordinatesSpace-response>) istream)
  "Deserializes a message object of type '<SetCoordinatesSpace-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCoordinatesSpace-response>)))
  "Returns string type for a service object of type '<SetCoordinatesSpace-response>"
  "phoxi_camera/SetCoordinatesSpaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCoordinatesSpace-response)))
  "Returns string type for a service object of type 'SetCoordinatesSpace-response"
  "phoxi_camera/SetCoordinatesSpaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCoordinatesSpace-response>)))
  "Returns md5sum for a message object of type '<SetCoordinatesSpace-response>"
  "6471d6222bbb561b60df31b08bec6e6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCoordinatesSpace-response)))
  "Returns md5sum for a message object of type 'SetCoordinatesSpace-response"
  "6471d6222bbb561b60df31b08bec6e6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCoordinatesSpace-response>)))
  "Returns full string definition for message of type '<SetCoordinatesSpace-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCoordinatesSpace-response)))
  "Returns full string definition for message of type 'SetCoordinatesSpace-response"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCoordinatesSpace-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCoordinatesSpace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCoordinatesSpace-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCoordinatesSpace)))
  'SetCoordinatesSpace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCoordinatesSpace)))
  'SetCoordinatesSpace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCoordinatesSpace)))
  "Returns string type for a service object of type '<SetCoordinatesSpace>"
  "phoxi_camera/SetCoordinatesSpace")