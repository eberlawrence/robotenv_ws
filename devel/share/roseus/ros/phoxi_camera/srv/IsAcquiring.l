;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::IsAcquiring)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'IsAcquiring (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::ISACQUIRING")
  (make-package "PHOXI_CAMERA::ISACQUIRING"))
(unless (find-package "PHOXI_CAMERA::ISACQUIRINGREQUEST")
  (make-package "PHOXI_CAMERA::ISACQUIRINGREQUEST"))
(unless (find-package "PHOXI_CAMERA::ISACQUIRINGRESPONSE")
  (make-package "PHOXI_CAMERA::ISACQUIRINGRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::IsAcquiringRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::IsAcquiringRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass phoxi_camera::IsAcquiringResponse
  :super ros::object
  :slots (_is_acquiring ))

(defmethod phoxi_camera::IsAcquiringResponse
  (:init
   (&key
    ((:is_acquiring __is_acquiring) nil)
    )
   (send-super :init)
   (setq _is_acquiring __is_acquiring)
   self)
  (:is_acquiring
   (&optional (__is_acquiring :null))
   (if (not (eq __is_acquiring :null)) (setq _is_acquiring __is_acquiring)) _is_acquiring)
  (:serialization-length
   ()
   (+
    ;; bool _is_acquiring
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_acquiring
       (if _is_acquiring (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_acquiring
     (setq _is_acquiring (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::IsAcquiring
  :super ros::object
  :slots ())

(setf (get phoxi_camera::IsAcquiring :md5sum-) "178c4f223aa32769d3555a15bcb0158f")
(setf (get phoxi_camera::IsAcquiring :datatype-) "phoxi_camera/IsAcquiring")
(setf (get phoxi_camera::IsAcquiring :request) phoxi_camera::IsAcquiringRequest)
(setf (get phoxi_camera::IsAcquiring :response) phoxi_camera::IsAcquiringResponse)

(defmethod phoxi_camera::IsAcquiringRequest
  (:response () (instance phoxi_camera::IsAcquiringResponse :init)))

(setf (get phoxi_camera::IsAcquiringRequest :md5sum-) "178c4f223aa32769d3555a15bcb0158f")
(setf (get phoxi_camera::IsAcquiringRequest :datatype-) "phoxi_camera/IsAcquiringRequest")
(setf (get phoxi_camera::IsAcquiringRequest :definition-)
      "---
bool is_acquiring
")

(setf (get phoxi_camera::IsAcquiringResponse :md5sum-) "178c4f223aa32769d3555a15bcb0158f")
(setf (get phoxi_camera::IsAcquiringResponse :datatype-) "phoxi_camera/IsAcquiringResponse")
(setf (get phoxi_camera::IsAcquiringResponse :definition-)
      "---
bool is_acquiring
")



(provide :phoxi_camera/IsAcquiring "178c4f223aa32769d3555a15bcb0158f")


