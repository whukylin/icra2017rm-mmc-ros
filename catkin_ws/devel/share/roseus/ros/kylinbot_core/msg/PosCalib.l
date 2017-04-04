;; Auto-generated. Do not edit!


(when (boundp 'kylinbot_core::PosCalib)
  (if (not (find-package "KYLINBOT_CORE"))
    (make-package "KYLINBOT_CORE"))
  (shadow 'PosCalib (find-package "KYLINBOT_CORE")))
(unless (find-package "KYLINBOT_CORE::POSCALIB")
  (make-package "KYLINBOT_CORE::POSCALIB"))

(in-package "ROS")
;;//! \htmlinclude PosCalib.msg.html


(defclass kylinbot_core::PosCalib
  :super ros::object
  :slots (_frame_id _el _eh _cl _ch ))

(defmethod kylinbot_core::PosCalib
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:el __el) 0)
    ((:eh __eh) 0)
    ((:cl __cl) 0)
    ((:ch __ch) 0)
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _el (round __el))
   (setq _eh (round __eh))
   (setq _cl (round __cl))
   (setq _ch (round __ch))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:el
   (&optional __el)
   (if __el (setq _el __el)) _el)
  (:eh
   (&optional __eh)
   (if __eh (setq _eh __eh)) _eh)
  (:cl
   (&optional __cl)
   (if __cl (setq _cl __cl)) _cl)
  (:ch
   (&optional __ch)
   (if __ch (setq _ch __ch)) _ch)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; int16 _el
    2
    ;; int16 _eh
    2
    ;; int16 _cl
    2
    ;; int16 _ch
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; int16 _el
       (write-word _el s)
     ;; int16 _eh
       (write-word _eh s)
     ;; int16 _cl
       (write-word _cl s)
     ;; int16 _ch
       (write-word _ch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _el
     (setq _el (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _eh
     (setq _eh (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cl
     (setq _cl (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ch
     (setq _ch (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kylinbot_core::PosCalib :md5sum-) "908b6b2028673e85c08cdffdd515277c")
(setf (get kylinbot_core::PosCalib :datatype-) "kylinbot_core/PosCalib")
(setf (get kylinbot_core::PosCalib :definition-)
      "uint32 frame_id
int16 el
int16 eh
int16 cl
int16 ch

")



(provide :kylinbot_core/PosCalib "908b6b2028673e85c08cdffdd515277c")


