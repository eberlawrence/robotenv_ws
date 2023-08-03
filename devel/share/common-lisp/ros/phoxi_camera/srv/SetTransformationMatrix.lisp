; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude SetTransformationMatrix-request.msg.html

(cl:defclass <SetTransformationMatrix-request> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (coordinates_space
    :reader coordinates_space
    :initarg :coordinates_space
    :type cl:fixnum
    :initform 0)
   (set_space
    :reader set_space
    :initarg :set_space
    :type cl:boolean
    :initform cl:nil)
   (save_settings
    :reader save_settings
    :initarg :save_settings
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTransformationMatrix-request (<SetTransformationMatrix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformationMatrix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformationMatrix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SetTransformationMatrix-request> is deprecated: use phoxi_camera-srv:SetTransformationMatrix-request instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <SetTransformationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:transform-val is deprecated.  Use phoxi_camera-srv:transform instead.")
  (transform m))

(cl:ensure-generic-function 'coordinates_space-val :lambda-list '(m))
(cl:defmethod coordinates_space-val ((m <SetTransformationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:coordinates_space-val is deprecated.  Use phoxi_camera-srv:coordinates_space instead.")
  (coordinates_space m))

(cl:ensure-generic-function 'set_space-val :lambda-list '(m))
(cl:defmethod set_space-val ((m <SetTransformationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:set_space-val is deprecated.  Use phoxi_camera-srv:set_space instead.")
  (set_space m))

(cl:ensure-generic-function 'save_settings-val :lambda-list '(m))
(cl:defmethod save_settings-val ((m <SetTransformationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:save_settings-val is deprecated.  Use phoxi_camera-srv:save_settings instead.")
  (save_settings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformationMatrix-request>) ostream)
  "Serializes a message object of type '<SetTransformationMatrix-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinates_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_space) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'save_settings) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformationMatrix-request>) istream)
  "Deserializes a message object of type '<SetTransformationMatrix-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinates_space)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_space) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'save_settings) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformationMatrix-request>)))
  "Returns string type for a service object of type '<SetTransformationMatrix-request>"
  "phoxi_camera/SetTransformationMatrixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformationMatrix-request)))
  "Returns string type for a service object of type 'SetTransformationMatrix-request"
  "phoxi_camera/SetTransformationMatrixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformationMatrix-request>)))
  "Returns md5sum for a message object of type '<SetTransformationMatrix-request>"
  "451cc6edd533358f5a507561ee1fbaee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformationMatrix-request)))
  "Returns md5sum for a message object of type 'SetTransformationMatrix-request"
  "451cc6edd533358f5a507561ee1fbaee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformationMatrix-request>)))
  "Returns full string definition for message of type '<SetTransformationMatrix-request>"
  (cl:format cl:nil "geometry_msgs/Transform transform~%uint8 coordinates_space     # 1 = CameraSpace, 2 = MountingSpace, 3 = MarkerSpace, 4 = RobotSpace, 5 = CustomSpace~%bool set_space              # If true then set coordinates_space to to PhoXi Control.~%bool save_settings          # If true then settings will persist after restart of PhoXi Control.~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformationMatrix-request)))
  "Returns full string definition for message of type 'SetTransformationMatrix-request"
  (cl:format cl:nil "geometry_msgs/Transform transform~%uint8 coordinates_space     # 1 = CameraSpace, 2 = MountingSpace, 3 = MarkerSpace, 4 = RobotSpace, 5 = CustomSpace~%bool set_space              # If true then set coordinates_space to to PhoXi Control.~%bool save_settings          # If true then settings will persist after restart of PhoXi Control.~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformationMatrix-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformationMatrix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformationMatrix-request
    (cl:cons ':transform (transform msg))
    (cl:cons ':coordinates_space (coordinates_space msg))
    (cl:cons ':set_space (set_space msg))
    (cl:cons ':save_settings (save_settings msg))
))
;//! \htmlinclude SetTransformationMatrix-response.msg.html

(cl:defclass <SetTransformationMatrix-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetTransformationMatrix-response (<SetTransformationMatrix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformationMatrix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformationMatrix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<SetTransformationMatrix-response> is deprecated: use phoxi_camera-srv:SetTransformationMatrix-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetTransformationMatrix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:message-val is deprecated.  Use phoxi_camera-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetTransformationMatrix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:success-val is deprecated.  Use phoxi_camera-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformationMatrix-response>) ostream)
  "Serializes a message object of type '<SetTransformationMatrix-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformationMatrix-response>) istream)
  "Deserializes a message object of type '<SetTransformationMatrix-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformationMatrix-response>)))
  "Returns string type for a service object of type '<SetTransformationMatrix-response>"
  "phoxi_camera/SetTransformationMatrixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformationMatrix-response)))
  "Returns string type for a service object of type 'SetTransformationMatrix-response"
  "phoxi_camera/SetTransformationMatrixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformationMatrix-response>)))
  "Returns md5sum for a message object of type '<SetTransformationMatrix-response>"
  "451cc6edd533358f5a507561ee1fbaee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformationMatrix-response)))
  "Returns md5sum for a message object of type 'SetTransformationMatrix-response"
  "451cc6edd533358f5a507561ee1fbaee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformationMatrix-response>)))
  "Returns full string definition for message of type '<SetTransformationMatrix-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformationMatrix-response)))
  "Returns full string definition for message of type 'SetTransformationMatrix-response"
  (cl:format cl:nil "string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformationMatrix-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformationMatrix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformationMatrix-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTransformationMatrix)))
  'SetTransformationMatrix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTransformationMatrix)))
  'SetTransformationMatrix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformationMatrix)))
  "Returns string type for a service object of type '<SetTransformationMatrix>"
  "phoxi_camera/SetTransformationMatrix")