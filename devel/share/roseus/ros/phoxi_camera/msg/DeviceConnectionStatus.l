;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::DeviceConnectionStatus)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'DeviceConnectionStatus (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS")
  (make-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DeviceConnectionStatus.msg.html


(intern "*UNKNOWN*" (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(shadow '*UNKNOWN* (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(defconstant phoxi_camera::DeviceConnectionStatus::*UNKNOWN* 0)
(intern "*READY*" (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(shadow '*READY* (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(defconstant phoxi_camera::DeviceConnectionStatus::*READY* 1)
(intern "*OCCUPIED*" (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(shadow '*OCCUPIED* (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(defconstant phoxi_camera::DeviceConnectionStatus::*OCCUPIED* 2)
(intern "*STARTING*" (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(shadow '*STARTING* (find-package "PHOXI_CAMERA::DEVICECONNECTIONSTATUS"))
(defconstant phoxi_camera::DeviceConnectionStatus::*STARTING* 3)

(defun phoxi_camera::DeviceConnectionStatus-to-symbol (const)
  (cond
        ((= const 0) 'phoxi_camera::DeviceConnectionStatus::*Unknown*)
        ((= const 1) 'phoxi_camera::DeviceConnectionStatus::*Ready*)
        ((= const 2) 'phoxi_camera::DeviceConnectionStatus::*Occupied*)
        ((= const 3) 'phoxi_camera::DeviceConnectionStatus::*Starting*)
        (t nil)))

(defclass phoxi_camera::DeviceConnectionStatus
  :super ros::object
  :slots (_status ))

(defmethod phoxi_camera::DeviceConnectionStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get phoxi_camera::DeviceConnectionStatus :md5sum-) "2c3107e3d7b088e448117fa0903f7a92")
(setf (get phoxi_camera::DeviceConnectionStatus :datatype-) "phoxi_camera/DeviceConnectionStatus")
(setf (get phoxi_camera::DeviceConnectionStatus :definition-)
      "int32 status
int32 Unknown = 0
int32 Ready = 1
int32 Occupied = 2
int32 Starting = 3
")



(provide :phoxi_camera/DeviceConnectionStatus "2c3107e3d7b088e448117fa0903f7a92")


