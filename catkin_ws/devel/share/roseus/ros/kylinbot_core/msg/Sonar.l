;; Auto-generated. Do not edit!


(when (boundp 'kylinbot_core::Sonar)
  (if (not (find-package "KYLINBOT_CORE"))
    (make-package "KYLINBOT_CORE"))
  (shadow 'Sonar (find-package "KYLINBOT_CORE")))
(unless (find-package "KYLINBOT_CORE::SONAR")
  (make-package "KYLINBOT_CORE::SONAR"))

(in-package "ROS")
;;//! \htmlinclude Sonar.msg.html


(defclass kylinbot_core::Sonar
  :super ros::object
  :slots (_frame_id _fixed _moble _left _right ))

(defmethod kylinbot_core::Sonar
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:fixed __fixed) 0)
    ((:moble __moble) 0)
    ((:left __left) 0)
    ((:right __right) 0)
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _fixed (round __fixed))
   (setq _moble (round __moble))
   (setq _left (round __left))
   (setq _right (round __right))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:fixed
   (&optional __fixed)
   (if __fixed (setq _fixed __fixed)) _fixed)
  (:moble
   (&optional __moble)
   (if __moble (setq _moble __moble)) _moble)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint16 _fixed
    2
    ;; uint16 _moble
    2
    ;; uint16 _left
    2
    ;; uint16 _right
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint16 _fixed
       (write-word _fixed s)
     ;; uint16 _moble
       (write-word _moble s)
     ;; uint16 _left
       (write-word _left s)
     ;; uint16 _right
       (write-word _right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _fixed
     (setq _fixed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _moble
     (setq _moble (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _left
     (setq _left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _right
     (setq _right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kylinbot_core::Sonar :md5sum-) "32e3008d8c0744f5206e9f75d97600c9")
(setf (get kylinbot_core::Sonar :datatype-) "kylinbot_core/Sonar")
(setf (get kylinbot_core::Sonar :definition-)
      "uint32 frame_id
uint16 fixed
uint16 moble
uint16 left
uint16 right

")



(provide :kylinbot_core/Sonar "32e3008d8c0744f5206e9f75d97600c9")


