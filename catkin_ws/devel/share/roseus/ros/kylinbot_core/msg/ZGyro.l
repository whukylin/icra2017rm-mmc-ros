;; Auto-generated. Do not edit!


(when (boundp 'kylinbot_core::ZGyro)
  (if (not (find-package "KYLINBOT_CORE"))
    (make-package "KYLINBOT_CORE"))
  (shadow 'ZGyro (find-package "KYLINBOT_CORE")))
(unless (find-package "KYLINBOT_CORE::ZGYRO")
  (make-package "KYLINBOT_CORE::ZGYRO"))

(in-package "ROS")
;;//! \htmlinclude ZGyro.msg.html


(defclass kylinbot_core::ZGyro
  :super ros::object
  :slots (_frame_id _angle _rate ))

(defmethod kylinbot_core::ZGyro
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:angle __angle) 0)
    ((:rate __rate) 0)
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _angle (round __angle))
   (setq _rate (round __rate))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; int32 _angle
    4
    ;; int16 _rate
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; int32 _angle
       (write-long _angle s)
     ;; int16 _rate
       (write-word _rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle
     (setq _angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _rate
     (setq _rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kylinbot_core::ZGyro :md5sum-) "81195e9fb61e7413001d7734ec5f7f5e")
(setf (get kylinbot_core::ZGyro :datatype-) "kylinbot_core/ZGyro")
(setf (get kylinbot_core::ZGyro :definition-)
      "uint32 frame_id
int32 angle
int16 rate

")



(provide :kylinbot_core/ZGyro "81195e9fb61e7413001d7734ec5f7f5e")


