;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::GetFrame)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'GetFrame (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::GETFRAME")
  (make-package "PHOXI_CAMERA::GETFRAME"))
(unless (find-package "PHOXI_CAMERA::GETFRAMEREQUEST")
  (make-package "PHOXI_CAMERA::GETFRAMEREQUEST"))
(unless (find-package "PHOXI_CAMERA::GETFRAMERESPONSE")
  (make-package "PHOXI_CAMERA::GETFRAMERESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::GetFrameRequest
  :super ros::object
  :slots (_in ))

(defmethod phoxi_camera::GetFrameRequest
  (:init
   (&key
    ((:in __in) 0)
    )
   (send-super :init)
   (setq _in (round __in))
   self)
  (:in
   (&optional __in)
   (if __in (setq _in __in)) _in)
  (:serialization-length
   ()
   (+
    ;; int64 _in
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _in
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _in (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _in) (= (length (_in . bv)) 2)) ;; bignum
              (write-long (ash (elt (_in . bv) 0) 0) s)
              (write-long (ash (elt (_in . bv) 1) -1) s))
             ((and (class _in) (= (length (_in . bv)) 1)) ;; big1
              (write-long (elt (_in . bv) 0) s)
              (write-long (if (>= _in 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _in s)(write-long (if (>= _in 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _in
#+(or :alpha :irix6 :x86_64)
      (setf _in (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _in (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass phoxi_camera::GetFrameResponse
  :super ros::object
  :slots (_message _success ))

(defmethod phoxi_camera::GetFrameResponse
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

(defclass phoxi_camera::GetFrame
  :super ros::object
  :slots ())

(setf (get phoxi_camera::GetFrame :md5sum-) "51ed6a27e8851d6116d5fe59ddb47078")
(setf (get phoxi_camera::GetFrame :datatype-) "phoxi_camera/GetFrame")
(setf (get phoxi_camera::GetFrame :request) phoxi_camera::GetFrameRequest)
(setf (get phoxi_camera::GetFrame :response) phoxi_camera::GetFrameResponse)

(defmethod phoxi_camera::GetFrameRequest
  (:response () (instance phoxi_camera::GetFrameResponse :init)))

(setf (get phoxi_camera::GetFrameRequest :md5sum-) "51ed6a27e8851d6116d5fe59ddb47078")
(setf (get phoxi_camera::GetFrameRequest :datatype-) "phoxi_camera/GetFrameRequest")
(setf (get phoxi_camera::GetFrameRequest :definition-)
      "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).
---
string message
bool success
")

(setf (get phoxi_camera::GetFrameResponse :md5sum-) "51ed6a27e8851d6116d5fe59ddb47078")
(setf (get phoxi_camera::GetFrameResponse :datatype-) "phoxi_camera/GetFrameResponse")
(setf (get phoxi_camera::GetFrameResponse :definition-)
      "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).
---
string message
bool success
")



(provide :phoxi_camera/GetFrame "51ed6a27e8851d6116d5fe59ddb47078")


