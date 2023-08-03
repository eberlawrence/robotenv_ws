;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::IsConnected)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'IsConnected (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::ISCONNECTED")
  (make-package "PHOXI_CAMERA::ISCONNECTED"))
(unless (find-package "PHOXI_CAMERA::ISCONNECTEDREQUEST")
  (make-package "PHOXI_CAMERA::ISCONNECTEDREQUEST"))
(unless (find-package "PHOXI_CAMERA::ISCONNECTEDRESPONSE")
  (make-package "PHOXI_CAMERA::ISCONNECTEDRESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::IsConnectedRequest
  :super ros::object
  :slots ())

(defmethod phoxi_camera::IsConnectedRequest
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

(defclass phoxi_camera::IsConnectedResponse
  :super ros::object
  :slots (_connected ))

(defmethod phoxi_camera::IsConnectedResponse
  (:init
   (&key
    ((:connected __connected) nil)
    )
   (send-super :init)
   (setq _connected __connected)
   self)
  (:connected
   (&optional (__connected :null))
   (if (not (eq __connected :null)) (setq _connected __connected)) _connected)
  (:serialization-length
   ()
   (+
    ;; bool _connected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass phoxi_camera::IsConnected
  :super ros::object
  :slots ())

(setf (get phoxi_camera::IsConnected :md5sum-) "e0cdaf65159c7f3563426650fb8d3f64")
(setf (get phoxi_camera::IsConnected :datatype-) "phoxi_camera/IsConnected")
(setf (get phoxi_camera::IsConnected :request) phoxi_camera::IsConnectedRequest)
(setf (get phoxi_camera::IsConnected :response) phoxi_camera::IsConnectedResponse)

(defmethod phoxi_camera::IsConnectedRequest
  (:response () (instance phoxi_camera::IsConnectedResponse :init)))

(setf (get phoxi_camera::IsConnectedRequest :md5sum-) "e0cdaf65159c7f3563426650fb8d3f64")
(setf (get phoxi_camera::IsConnectedRequest :datatype-) "phoxi_camera/IsConnectedRequest")
(setf (get phoxi_camera::IsConnectedRequest :definition-)
      "---
bool connected
")

(setf (get phoxi_camera::IsConnectedResponse :md5sum-) "e0cdaf65159c7f3563426650fb8d3f64")
(setf (get phoxi_camera::IsConnectedResponse :datatype-) "phoxi_camera/IsConnectedResponse")
(setf (get phoxi_camera::IsConnectedResponse :definition-)
      "---
bool connected
")



(provide :phoxi_camera/IsConnected "e0cdaf65159c7f3563426650fb8d3f64")


