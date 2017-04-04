; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude RC.msg.html

(cl:defclass <RC> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (buf
    :reader buf
    :initarg :buf
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass RC (<RC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<RC> is deprecated: use kylinbot_core-msg:RC instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <RC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'buf-val :lambda-list '(m))
(cl:defmethod buf-val ((m <RC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:buf-val is deprecated.  Use kylinbot_core-msg:buf instead.")
  (buf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RC>) ostream)
  "Serializes a message object of type '<RC>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'buf))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RC>) istream)
  "Deserializes a message object of type '<RC>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'buf) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'buf)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RC>)))
  "Returns string type for a message object of type '<RC>"
  "kylinbot_core/RC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RC)))
  "Returns string type for a message object of type 'RC"
  "kylinbot_core/RC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RC>)))
  "Returns md5sum for a message object of type '<RC>"
  "915ad17df448adf1b26d8b1ed8c1def8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RC)))
  "Returns md5sum for a message object of type 'RC"
  "915ad17df448adf1b26d8b1ed8c1def8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RC>)))
  "Returns full string definition for message of type '<RC>"
  (cl:format cl:nil "uint32 frame_id~%uint8[6] buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RC)))
  "Returns full string definition for message of type 'RC"
  (cl:format cl:nil "uint32 frame_id~%uint8[6] buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RC>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'buf) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RC>))
  "Converts a ROS message object to a list"
  (cl:list 'RC
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':buf (buf msg))
))
