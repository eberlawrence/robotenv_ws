;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::DeviceType)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'DeviceType (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::DEVICETYPE")
  (make-package "PHOXI_CAMERA::DEVICETYPE"))

(in-package "ROS")
;;//! \htmlinclude DeviceType.msg.html


(intern "*PHOXISCANNER*" (find-package "PHOXI_CAMERA::DEVICETYPE"))
(shadow '*PHOXISCANNER* (find-package "PHOXI_CAMERA::DEVICETYPE"))
(defconstant phoxi_camera::DeviceType::*PHOXISCANNER* 0)
(intern "*PHOXICAMERA*" (find-package "PHOXI_CAMERA::DEVICETYPE"))
(shadow '*PHOXICAMERA* (find-package "PHOXI_CAMERA::DEVICETYPE"))
(defconstant phoxi_camera::DeviceType::*PHOXICAMERA* 1)
(intern "*NOVALUE*" (find-package "PHOXI_CAMERA::DEVICETYPE"))
(shadow '*NOVALUE* (find-package "PHOXI_CAMERA::DEVICETYPE"))
(defconstant phoxi_camera::DeviceType::*NOVALUE* 3)

(defun phoxi_camera::DeviceType-to-symbol (const)
  (cond
        ((= const 0) 'phoxi_camera::DeviceType::*PhoXiScanner*)
        ((= const 1) 'phoxi_camera::DeviceType::*PhoXiCamera*)
        ((= const 3) 'phoxi_camera::DeviceType::*NoValue*)
        (t nil)))

(defclass phoxi_camera::DeviceType
  :super ros::object
  :slots (_type ))

(defmethod phoxi_camera::DeviceType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get phoxi_camera::DeviceType :md5sum-) "5f59591700edcd2d9a225ab5c76ace65")
(setf (get phoxi_camera::DeviceType :datatype-) "phoxi_camera/DeviceType")
(setf (get phoxi_camera::DeviceType :definition-)
      "int32 type
int32 PhoXiScanner = 0
int32 PhoXiCamera = 1
int32 NoValue = 3
")



(provide :phoxi_camera/DeviceType "5f59591700edcd2d9a225ab5c76ace65")


