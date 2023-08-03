;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::DeviceInformation)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'DeviceInformation (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::DEVICEINFORMATION")
  (make-package "PHOXI_CAMERA::DEVICEINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude DeviceInformation.msg.html


(defclass phoxi_camera::DeviceInformation
  :super ros::object
  :slots (_name _type _hwIdentification _IPaddress _status _firmwareVersion ))

(defmethod phoxi_camera::DeviceInformation
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) (instance phoxi_camera::DeviceType :init))
    ((:hwIdentification __hwIdentification) "")
    ((:IPaddress __IPaddress) "")
    ((:status __status) (instance phoxi_camera::DeviceConnectionStatus :init))
    ((:firmwareVersion __firmwareVersion) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type __type)
   (setq _hwIdentification (string __hwIdentification))
   (setq _IPaddress (string __IPaddress))
   (setq _status __status)
   (setq _firmwareVersion (string __firmwareVersion))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:hwIdentification
   (&optional __hwIdentification)
   (if __hwIdentification (setq _hwIdentification __hwIdentification)) _hwIdentification)
  (:IPaddress
   (&optional __IPaddress)
   (if __IPaddress (setq _IPaddress __IPaddress)) _IPaddress)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:firmwareVersion
   (&optional __firmwareVersion)
   (if __firmwareVersion (setq _firmwareVersion __firmwareVersion)) _firmwareVersion)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; phoxi_camera/DeviceType _type
    (send _type :serialization-length)
    ;; string _hwIdentification
    4 (length _hwIdentification)
    ;; string _IPaddress
    4 (length _IPaddress)
    ;; phoxi_camera/DeviceConnectionStatus _status
    (send _status :serialization-length)
    ;; string _firmwareVersion
    4 (length _firmwareVersion)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; phoxi_camera/DeviceType _type
       (send _type :serialize s)
     ;; string _hwIdentification
       (write-long (length _hwIdentification) s) (princ _hwIdentification s)
     ;; string _IPaddress
       (write-long (length _IPaddress) s) (princ _IPaddress s)
     ;; phoxi_camera/DeviceConnectionStatus _status
       (send _status :serialize s)
     ;; string _firmwareVersion
       (write-long (length _firmwareVersion) s) (princ _firmwareVersion s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; phoxi_camera/DeviceType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; string _hwIdentification
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hwIdentification (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _IPaddress
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _IPaddress (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; phoxi_camera/DeviceConnectionStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; string _firmwareVersion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmwareVersion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get phoxi_camera::DeviceInformation :md5sum-) "0b0bc4d79cc2229b2b1a6277b66a3576")
(setf (get phoxi_camera::DeviceInformation :datatype-) "phoxi_camera/DeviceInformation")
(setf (get phoxi_camera::DeviceInformation :definition-)
      "string name
phoxi_camera/DeviceType type
string hwIdentification
string IPaddress
phoxi_camera/DeviceConnectionStatus status
string firmwareVersion
================================================================================
MSG: phoxi_camera/DeviceType
int32 type
int32 PhoXiScanner = 0
int32 PhoXiCamera = 1
int32 NoValue = 3
================================================================================
MSG: phoxi_camera/DeviceConnectionStatus
int32 status
int32 Unknown = 0
int32 Ready = 1
int32 Occupied = 2
int32 Starting = 3
")



(provide :phoxi_camera/DeviceInformation "0b0bc4d79cc2229b2b1a6277b66a3576")


