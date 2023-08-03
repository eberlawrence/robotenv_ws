;; Auto-generated. Do not edit!


(when (boundp 'phoxi_camera::SaveFrame)
  (if (not (find-package "PHOXI_CAMERA"))
    (make-package "PHOXI_CAMERA"))
  (shadow 'SaveFrame (find-package "PHOXI_CAMERA")))
(unless (find-package "PHOXI_CAMERA::SAVEFRAME")
  (make-package "PHOXI_CAMERA::SAVEFRAME"))
(unless (find-package "PHOXI_CAMERA::SAVEFRAMEREQUEST")
  (make-package "PHOXI_CAMERA::SAVEFRAMEREQUEST"))
(unless (find-package "PHOXI_CAMERA::SAVEFRAMERESPONSE")
  (make-package "PHOXI_CAMERA::SAVEFRAMERESPONSE"))

(in-package "ROS")





(defclass phoxi_camera::SaveFrameRequest
  :super ros::object
  :slots (_in _path ))

(defmethod phoxi_camera::SaveFrameRequest
  (:init
   (&key
    ((:in __in) 0)
    ((:path __path) "")
    )
   (send-super :init)
   (setq _in (round __in))
   (setq _path (string __path))
   self)
  (:in
   (&optional __in)
   (if __in (setq _in __in)) _in)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; int64 _in
    8
    ;; string _path
    4 (length _path)
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
     ;; string _path
       (write-long (length _path) s) (princ _path s)
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
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass phoxi_camera::SaveFrameResponse
  :super ros::object
  :slots (_message _success ))

(defmethod phoxi_camera::SaveFrameResponse
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

(defclass phoxi_camera::SaveFrame
  :super ros::object
  :slots ())

(setf (get phoxi_camera::SaveFrame :md5sum-) "7dde036917924a72a5bcf22d6795b22c")
(setf (get phoxi_camera::SaveFrame :datatype-) "phoxi_camera/SaveFrame")
(setf (get phoxi_camera::SaveFrame :request) phoxi_camera::SaveFrameRequest)
(setf (get phoxi_camera::SaveFrame :response) phoxi_camera::SaveFrameResponse)

(defmethod phoxi_camera::SaveFrameRequest
  (:response () (instance phoxi_camera::SaveFrameResponse :init)))

(setf (get phoxi_camera::SaveFrameRequest :md5sum-) "7dde036917924a72a5bcf22d6795b22c")
(setf (get phoxi_camera::SaveFrameRequest :datatype-) "phoxi_camera/SaveFrameRequest")
(setf (get phoxi_camera::SaveFrameRequest :definition-)
      "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).
string path
---
string message
bool success

")

(setf (get phoxi_camera::SaveFrameResponse :md5sum-) "7dde036917924a72a5bcf22d6795b22c")
(setf (get phoxi_camera::SaveFrameResponse :datatype-) "phoxi_camera/SaveFrameResponse")
(setf (get phoxi_camera::SaveFrameResponse :definition-)
      "int64 in        # id of scan returned by trigger_image service. If id is negative new frame is taken (no need to call trigger_image service).
string path
---
string message
bool success

")



(provide :phoxi_camera/SaveFrame "7dde036917924a72a5bcf22d6795b22c")


