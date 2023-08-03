;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::TriggerImage)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'TriggerImage (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::TRIGGERIMAGE")
  (make-package "PHOXI_CAMERA::TRIGGERIMAGE"))
(unless (find-package "PHOXI_CAMERA::TRIGGERIMAGEREQUEST")
  (make-package "PHOXI_CAMERA::TRIGGERIMAGEREQUEST"))
(unless (find-package "PHOXI_CAMERA::TRIGGERIMAGERESPONSE")
  (make-package "PHOXI_CAMERA::TRIGGERIMAGERESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::TriggerImageRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::TriggerImageRequest
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

(defclass phoxi_camera::TriggerImageResponse
  :super ros::object
  :slots (_id _message _success ))

(defmethod phoxi_camera::TriggerImageResponse
  (:init
   (&key
    ((:id __id) 0)
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::TriggerImage
  :super ros::object
  :slots ())

(setf (get phoxi_camera::TriggerImage :md5sum-) "18755a57b4bb8720dff0c94fc28df6e9")
(setf (get phoxi_camera::TriggerImage :datatype-) "phoxi_camera/TriggerImage")
(setf (get phoxi_camera::TriggerImage :request) phoxi_camera::TriggerImageRequest)
(setf (get phoxi_camera::TriggerImage :response) phoxi_camera::TriggerImageResponse)

(defmethod phoxi_camera::TriggerImageRequest
  (:response () (instance phoxi_camera::TriggerImageResponse :init)))

(setf (get phoxi_camera::TriggerImageRequest :md5sum-) "18755a57b4bb8720dff0c94fc28df6e9")
(setf (get phoxi_camera::TriggerImageRequest :datatype-) "phoxi_camera/TriggerImageRequest")
(setf (get phoxi_camera::TriggerImageRequest :definition-)
      "---
int32 id            #id of taken scan
string message
bool success
")

(setf (get phoxi_camera::TriggerImageResponse :md5sum-) "18755a57b4bb8720dff0c94fc28df6e9")
(setf (get phoxi_camera::TriggerImageResponse :datatype-) "phoxi_camera/TriggerImageResponse")
(setf (get phoxi_camera::TriggerImageResponse :definition-)
      "---
int32 id            #id of taken scan
string message
bool success
")



(provide :phoxi_camera/TriggerImage "18755a57b4bb8720dff0c94fc28df6e9")


