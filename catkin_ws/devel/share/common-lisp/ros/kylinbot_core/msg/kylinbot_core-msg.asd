
(cl:in-package :asdf)

(defsystem "kylinbot_core-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CBUS" :depends-on ("_package_CBUS"))
    (:file "_package_CBUS" :depends-on ("_package"))
    (:file "Kylin" :depends-on ("_package_Kylin"))
    (:file "_package_Kylin" :depends-on ("_package"))
    (:file "PosCalib" :depends-on ("_package_PosCalib"))
    (:file "_package_PosCalib" :depends-on ("_package"))
    (:file "Sonar" :depends-on ("_package_Sonar"))
    (:file "_package_Sonar" :depends-on ("_package"))
    (:file "VirtualRC" :depends-on ("_package_VirtualRC"))
    (:file "_package_VirtualRC" :depends-on ("_package"))
    (:file "ZGyro" :depends-on ("_package_ZGyro"))
    (:file "_package_ZGyro" :depends-on ("_package"))
  ))