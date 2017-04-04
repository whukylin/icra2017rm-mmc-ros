;; Auto-generated. Do not edit!


(when (boundp 'kylinbot_core::RC)
  (if (not (find-package "KYLINBOT_CORE"))
    (make-package "KYLINBOT_CORE"))
  (shadow 'RC (find-package "KYLINBOT_CORE")))
(unless (find-package "KYLINBOT_CORE::RC")
  (make-package "KYLINBOT_CORE::RC"))

(in-package "ROS")
;;//! \htmlinclude RC.msg.html


(defclass kylinbot_core::RC
  :super ros::object
  :slots (_frame_id _buf ))

(defmethod kylinbot_core::RC
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:buf __buf) (make-array 6 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _buf __buf)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:buf
   (&optional __buf)
   (if __buf (setq _buf __buf)) _buf)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint8[6] _buf
    (* 1    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint8[6] _buf
     (princ _buf s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[6] _buf
   (setq _buf (make-array 6 :element-type :char))
   (replace _buf buf :start2 ptr-) (incf ptr- 6)
   ;;
   self)
  )

(setf (get kylinbot_core::RC :md5sum-) "915ad17df448adf1b26d8b1ed8c1def8")
(setf (get kylinbot_core::RC :datatype-) "kylinbot_core/RC")
(setf (get kylinbot_core::RC :definition-)
      "uint32 frame_id
uint8[6] buf

")



(provide :kylinbot_core/RC "915ad17df448adf1b26d8b1ed8c1def8")


