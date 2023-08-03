;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::SaveLastFrame)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'SaveLastFrame (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::SAVELASTFRAME")
  (make-package "PHOXI_CAMERA::SAVELASTFRAME"))
(unless (find-package "PHOXI_CAMERA::SAVELASTFRAMEREQUEST")
  (make-package "PHOXI_CAMERA::SAVELASTFRAMEREQUEST"))
(unless (find-package "PHOXI_CAMERA::SAVELASTFRAMERESPONSE")
  (make-package "PHOXI_CAMERA::SAVELASTFRAMERESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::SaveLastFrameRequest
  :super ros::object
  :slots (_file_path ))

(defmethod phoxi_camera::SaveLastFrameRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass phoxi_camera::SaveLastFrameResponse
  :super ros::object
  :slots (_message _success ))

(defmethod phoxi_camera::SaveLastFrameResponse
  (:init
   (&key
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::SaveLastFrame
  :super ros::object
  :slots ())

(setf (get phoxi_camera::SaveLastFrame :md5sum-) "881a7419fa699b3f5ff01ccdf209643b")
(setf (get phoxi_camera::SaveLastFrame :datatype-) "phoxi_camera/SaveLastFrame")
(setf (get phoxi_camera::SaveLastFrame :request) phoxi_camera::SaveLastFrameRequest)
(setf (get phoxi_camera::SaveLastFrame :response) phoxi_camera::SaveLastFrameResponse)

(defmethod phoxi_camera::SaveLastFrameRequest
  (:response () (instance phoxi_camera::SaveLastFrameResponse :init)))

(setf (get phoxi_camera::SaveLastFrameRequest :md5sum-) "881a7419fa699b3f5ff01ccdf209643b")
(setf (get phoxi_camera::SaveLastFrameRequest :datatype-) "phoxi_camera/SaveLastFrameRequest")
(setf (get phoxi_camera::SaveLastFrameRequest :definition-)
      "string file_path     # full file path with file extension, available extensions: *.praw; *.ply; *.ptx; *.tif; *.prawf
---
string message
bool success

")

(setf (get phoxi_camera::SaveLastFrameResponse :md5sum-) "881a7419fa699b3f5ff01ccdf209643b")
(setf (get phoxi_camera::SaveLastFrameResponse :datatype-) "phoxi_camera/SaveLastFrameResponse")
(setf (get phoxi_camera::SaveLastFrameResponse :definition-)
      "string file_path     # full file path with file extension, available extensions: *.praw; *.ply; *.ptx; *.tif; *.prawf
---
string message
bool success

")



(provide :phoxi_camera/SaveLastFrame "881a7419fa699b3f5ff01ccdf209643b")


