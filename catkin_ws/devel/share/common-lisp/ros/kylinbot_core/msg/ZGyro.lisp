; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude ZGyro.msg.html

(cl:defclass <ZGyro> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:integer
    :initform 0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ZGyro (<ZGyro>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZGyro>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZGyro)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<ZGyro> is deprecated: use kylinbot_core-msg:ZGyro instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <ZGyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ZGyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:angle-val is deprecated.  Use kylinbot_core-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <ZGyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:rate-val is deprecated.  Use kylinbot_core-msg:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZGyro>) ostream)
  "Serializes a message object of type '<ZGyro>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZGyro>) istream)
  "Deserializes a message object of type '<ZGyro>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZGyro>)))
  "Returns string type for a message object of type '<ZGyro>"
  "kylinbot_core/ZGyro")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZGyro)))
  "Returns string type for a message object of type 'ZGyro"
  "kylinbot_core/ZGyro")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZGyro>)))
  "Returns md5sum for a message object of type '<ZGyro>"
  "81195e9fb61e7413001d7734ec5f7f5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZGyro)))
  "Returns md5sum for a message object of type 'ZGyro"
  "81195e9fb61e7413001d7734ec5f7f5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZGyro>)))
  "Returns full string definition for message of type '<ZGyro>"
  (cl:format cl:nil "uint32 frame_id~%int32 angle~%int16 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZGyro)))
  "Returns full string definition for message of type 'ZGyro"
  (cl:format cl:nil "uint32 frame_id~%int32 angle~%int16 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZGyro>))
  (cl:+ 0
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZGyro>))
  "Converts a ROS message object to a list"
  (cl:list 'ZGyro
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':rate (rate msg))
))
