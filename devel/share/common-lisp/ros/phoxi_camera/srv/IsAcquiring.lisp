; Auto-generated. Do not edit!


(cl:in-package phoxi_camera-srv)


;//! \htmlinclude IsAcquiring-request.msg.html

(cl:defclass <IsAcquiring-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsAcquiring-request (<IsAcquiring-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsAcquiring-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsAcquiring-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<IsAcquiring-request> is deprecated: use phoxi_camera-srv:IsAcquiring-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsAcquiring-request>) ostream)
  "Serializes a message object of type '<IsAcquiring-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsAcquiring-request>) istream)
  "Deserializes a message object of type '<IsAcquiring-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsAcquiring-request>)))
  "Returns string type for a service object of type '<IsAcquiring-request>"
  "phoxi_camera/IsAcquiringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsAcquiring-request)))
  "Returns string type for a service object of type 'IsAcquiring-request"
  "phoxi_camera/IsAcquiringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsAcquiring-request>)))
  "Returns md5sum for a message object of type '<IsAcquiring-request>"
  "178c4f223aa32769d3555a15bcb0158f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsAcquiring-request)))
  "Returns md5sum for a message object of type 'IsAcquiring-request"
  "178c4f223aa32769d3555a15bcb0158f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsAcquiring-request>)))
  "Returns full string definition for message of type '<IsAcquiring-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsAcquiring-request)))
  "Returns full string definition for message of type 'IsAcquiring-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsAcquiring-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsAcquiring-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsAcquiring-request
))
;//! \htmlinclude IsAcquiring-response.msg.html

(cl:defclass <IsAcquiring-response> (roslisp-msg-protocol:ros-message)
  ((is_acquiring
    :reader is_acquiring
    :initarg :is_acquiring
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsAcquiring-response (<IsAcquiring-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsAcquiring-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsAcquiring-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phoxi_camera-srv:<IsAcquiring-response> is deprecated: use phoxi_camera-srv:IsAcquiring-response instead.")))

(cl:ensure-generic-function 'is_acquiring-val :lambda-list '(m))
(cl:defmethod is_acquiring-val ((m <IsAcquiring-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phoxi_camera-srv:is_acquiring-val is deprecated.  Use phoxi_camera-srv:is_acquiring instead.")
  (is_acquiring m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsAcquiring-response>) ostream)
  "Serializes a message object of type '<IsAcquiring-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_acquiring) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsAcquiring-response>) istream)
  "Deserializes a message object of type '<IsAcquiring-response>"
    (cl:setf (cl:slot-value msg 'is_acquiring) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsAcquiring-response>)))
  "Returns string type for a service object of type '<IsAcquiring-response>"
  "phoxi_camera/IsAcquiringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsAcquiring-response)))
  "Returns string type for a service object of type 'IsAcquiring-response"
  "phoxi_camera/IsAcquiringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsAcquiring-response>)))
  "Returns md5sum for a message object of type '<IsAcquiring-response>"
  "178c4f223aa32769d3555a15bcb0158f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsAcquiring-response)))
  "Returns md5sum for a message object of type 'IsAcquiring-response"
  "178c4f223aa32769d3555a15bcb0158f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsAcquiring-response>)))
  "Returns full string definition for message of type '<IsAcquiring-response>"
  (cl:format cl:nil "bool is_acquiring~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsAcquiring-response)))
  "Returns full string definition for message of type 'IsAcquiring-response"
  (cl:format cl:nil "bool is_acquiring~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsAcquiring-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsAcquiring-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsAcquiring-response
    (cl:cons ':is_acquiring (is_acquiring msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsAcquiring)))
  'IsAcquiring-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsAcquiring)))
  'IsAcquiring-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsAcquiring)))
  "Returns string type for a service object of type '<IsAcquiring>"
  "phoxi_camera/IsAcquiring")