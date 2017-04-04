;; Auto-generated. Do not edit!


(when (boundp 'kylinbot_core::CBUS)
  (if (not (find-package "KYLINBOT_CORE"))
    (make-package "KYLINBOT_CORE"))
  (shadow 'CBUS (find-package "KYLINBOT_CORE")))
(unless (find-package "KYLINBOT_CORE::CBUS")
  (make-package "KYLINBOT_CORE::CBUS"))

(in-package "ROS")
;;//! \htmlinclude CBUS.msg.html


(defclass kylinbot_core::CBUS
  :super ros::object
  :slots (_fs _px _py _pz _pe _pc _vx _vy _vz _ve _vc ))

(defmethod kylinbot_core::CBUS
  (:init
   (&key
    ((:fs __fs) 0)
    ((:px __px) 0)
    ((:py __py) 0)
    ((:pz __pz) 0)
    ((:pe __pe) 0)
    ((:pc __pc) 0)
    ((:vx __vx) 0)
    ((:vy __vy) 0)
    ((:vz __vz) 0)
    ((:ve __ve) 0)
    ((:vc __vc) 0)
    )
   (send-super :init)
   (setq _fs (round __fs))
   (setq _px (round __px))
   (setq _py (round __py))
   (setq _pz (round __pz))
   (setq _pe (round __pe))
   (setq _pc (round __pc))
   (setq _vx (round __vx))
   (setq _vy (round __vy))
   (setq _vz (round __vz))
   (setq _ve (round __ve))
   (setq _vc (round __vc))
   self)
  (:fs
   (&optional __fs)
   (if __fs (setq _fs __fs)) _fs)
  (:px
   (&optional __px)
   (if __px (setq _px __px)) _px)
  (:py
   (&optional __py)
   (if __py (setq _py __py)) _py)
  (:pz
   (&optional __pz)
   (if __pz (setq _pz __pz)) _pz)
  (:pe
   (&optional __pe)
   (if __pe (setq _pe __pe)) _pe)
  (:pc
   (&optional __pc)
   (if __pc (setq _pc __pc)) _pc)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:ve
   (&optional __ve)
   (if __ve (setq _ve __ve)) _ve)
  (:vc
   (&optional __vc)
   (if __vc (setq _vc __vc)) _vc)
  (:serialization-length
   ()
   (+
    ;; uint32 _fs
    4
    ;; int16 _px
    2
    ;; int16 _py
    2
    ;; int16 _pz
    2
    ;; int16 _pe
    2
    ;; int16 _pc
    2
    ;; int16 _vx
    2
    ;; int16 _vy
    2
    ;; int16 _vz
    2
    ;; int16 _ve
    2
    ;; int16 _vc
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _fs
       (write-long _fs s)
     ;; int16 _px
       (write-word _px s)
     ;; int16 _py
       (write-word _py s)
     ;; int16 _pz
       (write-word _pz s)
     ;; int16 _pe
       (write-word _pe s)
     ;; int16 _pc
       (write-word _pc s)
     ;; int16 _vx
       (write-word _vx s)
     ;; int16 _vy
       (write-word _vy s)
     ;; int16 _vz
       (write-word _vz s)
     ;; int16 _ve
       (write-word _ve s)
     ;; int16 _vc
       (write-word _vc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _fs
     (setq _fs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _px
     (setq _px (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _py
     (setq _py (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pz
     (setq _pz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pe
     (setq _pe (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pc
     (setq _pc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vx
     (setq _vx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vy
     (setq _vy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vz
     (setq _vz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ve
     (setq _ve (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vc
     (setq _vc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kylinbot_core::CBUS :md5sum-) "93fce3d0dc3169a0815342b4ce4be9c7")
(setf (get kylinbot_core::CBUS :datatype-) "kylinbot_core/CBUS")
(setf (get kylinbot_core::CBUS :definition-)
      "uint32 fs
int16 px
int16 py
int16 pz
int16 pe
int16 pc
int16 vx
int16 vy
int16 vz
int16 ve
int16 vc

")



(provide :kylinbot_core/CBUS "93fce3d0dc3169a0815342b4ce4be9c7")


