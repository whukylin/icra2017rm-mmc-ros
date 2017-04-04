;; Auto-generated. Do not edit!


(when (boundp 'kylinbot_core::KylinMsg)
  (if (not (find-package "KYLINBOT_CORE"))
    (make-package "KYLINBOT_CORE"))
  (shadow 'KylinMsg (find-package "KYLINBOT_CORE")))
(unless (find-package "KYLINBOT_CORE::KYLINMSG")
  (make-package "KYLINBOT_CORE::KYLINMSG"))

(in-package "ROS")
;;//! \htmlinclude KylinMsg.msg.html


(defclass kylinbot_core::KylinMsg
  :super ros::object
  :slots (_frame_id _cbus ))

(defmethod kylinbot_core::KylinMsg
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:cbus __cbus) (instance kylinbot_core::CBUS :init))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _cbus __cbus)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:cbus
   (&rest __cbus)
   (if (keywordp (car __cbus))
       (send* _cbus __cbus)
     (progn
       (if __cbus (setq _cbus (car __cbus)))
       _cbus)))
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; kylinbot_core/CBUS _cbus
    (send _cbus :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; kylinbot_core/CBUS _cbus
       (send _cbus :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; kylinbot_core/CBUS _cbus
     (send _cbus :deserialize buf ptr-) (incf ptr- (send _cbus :serialization-length))
   ;;
   self)
  )

(setf (get kylinbot_core::KylinMsg :md5sum-) "7131cdc32dd59ffa695dfef23c1bbcb8")
(setf (get kylinbot_core::KylinMsg :datatype-) "kylinbot_core/KylinMsg")
(setf (get kylinbot_core::KylinMsg :definition-)
      "uint32 frame_id
CBUS cbus

================================================================================
MSG: kylinbot_core/CBUS
uint32 fs
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



(provide :kylinbot_core/KylinMsg "7131cdc32dd59ffa695dfef23c1bbcb8")


