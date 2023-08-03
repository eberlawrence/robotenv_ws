
(cl:in-package :asdf)

(defsystem "phoxi_camera-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DeviceConnectionStatus" :depends-on ("_package_DeviceConnectionStatus"))
    (:file "_package_DeviceConnectionStatus" :depends-on ("_package"))
    (:file "DeviceInformation" :depends-on ("_package_DeviceInformation"))
    (:file "_package_DeviceInformation" :depends-on ("_package"))
    (:file "DeviceType" :depends-on ("_package_DeviceType"))
    (:file "_package_DeviceType" :depends-on ("_package"))
    (:file "PhoXiSize" :depends-on ("_package_PhoXiSize"))
    (:file "_package_PhoXiSize" :depends-on ("_package"))
    (:file "PosOriObjectsArray" :depends-on ("_package_PosOriObjectsArray"))
    (:file "_package_PosOriObjectsArray" :depends-on ("_package"))
  ))