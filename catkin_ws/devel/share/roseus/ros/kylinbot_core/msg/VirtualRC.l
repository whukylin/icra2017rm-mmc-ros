;; Auto-generated. Do not edit!


(when (boundp 'kylinbot_core::VirtualRC)
  (if (not (find-package "KYLINBOT_CORE"))
    (make-package "KYLINBOT_CORE"))
  (shadow 'VirtualRC (find-package "KYLINBOT_CORE")))
(unless (find-package "KYLINBOT_CORE::VIRTUALRC")
  (make-package "KYLINBOT_CORE::VIRTUALRC"))

(in-package "ROS")
;;//! \htmlinclude VirtualRC.msg.html


(defclass kylinbot_core::VirtualRC
  :super ros::object
  :slots (_frame_id _data ))

(defmethod kylinbot_core::VirtualRC
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:data __data) (make-array 6 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _data __data)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint8[6] _data
    (* 1    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint8[6] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[6] _data
   (setq _data (make-array 6 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 6)
   ;;
   self)
  )

(setf (get kylinbot_core::VirtualRC :md5sum-) "a2b2bda6c2cf9e9e80fa2e50b4c2f75c")
(setf (get kylinbot_core::VirtualRC :datatype-) "kylinbot_core/VirtualRC")
(setf (get kylinbot_core::VirtualRC :definition-)
      "uint32 frame_id
uint8[6] data

")



(provide :kylinbot_core/VirtualRC "a2b2bda6c2cf9e9e80fa2e50b4c2f75c")


