;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::PhoXiSize)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'PhoXiSize (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::PHOXISIZE")
  (make-package "PHOXI_CAMERA::PHOXISIZE"))

(in-package "ROS")
;;//! \htmlinclude PhoXiSize.msg.html


(defclass phoxi_camera::PhoXiSize
  :super ros::object
  :slots (_Width _Height ))

(defmethod phoxi_camera::PhoXiSize
  (:init
   (&key
    ((:Width __Width) 0)
    ((:Height __Height) 0)
    )
   (send-super :init)
   (setq _Width (round __Width))
   (setq _Height (round __Height))
   self)
  (:Width
   (&optional __Width)
   (if __Width (setq _Width __Width)) _Width)
  (:Height
   (&optional __Height)
   (if __Height (setq _Height __Height)) _Height)
  (:serialization-length
   ()
   (+
    ;; int32 _Width
    4
    ;; int32 _Height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Width
       (write-long _Width s)
     ;; int32 _Height
       (write-long _Height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Width
     (setq _Width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Height
     (setq _Height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get phoxi_camera::PhoXiSize :md5sum-) "fe4516275dcf5be9aa7db57236a062a6")
(setf (get phoxi_camera::PhoXiSize :datatype-) "phoxi_camera/PhoXiSize")
(setf (get phoxi_camera::PhoXiSize :definition-)
      "int32 Width
int32 Height
")



(provide :phoxi_camera/PhoXiSize "fe4516275dcf5be9aa7db57236a062a6")


