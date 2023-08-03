;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::PosOriObjectsArray)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'PosOriObjectsArray (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::POSORIOBJECTSARRAY")
  (make-package "PHOXI_CAMERA::POSORIOBJECTSARRAY"))

(in-package "ROS")
;;//! \htmlinclude PosOriObjectsArray.msg.html


(defclass phoxi_camera::PosOriObjectsArray
  :super ros::object
  :slots (_numObj _data ))

(defmethod phoxi_camera::PosOriObjectsArray
  (:init
   (&key
    ((:numObj __numObj) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _numObj (round __numObj))
   (setq _data __data)
   self)
  (:numObj
   (&optional __numObj)
   (if __numObj (setq _numObj __numObj)) _numObj)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _numObj
    4
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _numObj
       (write-long _numObj s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _numObj
     (setq _numObj (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get phoxi_camera::PosOriObjectsArray :md5sum-) "8106a020340683775f19b85b38f5f037")
(setf (get phoxi_camera::PosOriObjectsArray :datatype-) "phoxi_camera/PosOriObjectsArray")
(setf (get phoxi_camera::PosOriObjectsArray :definition-)
      "int32 numObj
float64[] data

")



(provide :phoxi_camera/PosOriObjectsArray "8106a020340683775f19b85b38f5f037")


