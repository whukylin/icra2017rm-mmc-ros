; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude KylinMsg.msg.html

(cl:defclass <KylinMsg> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (cbus
    :reader cbus
    :initarg :cbus
    :type kylinbot_core-msg:CBUS
    :initform (cl:make-instance 'kylinbot_core-msg:CBUS)))
)

(cl:defclass KylinMsg (<KylinMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KylinMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KylinMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<KylinMsg> is deprecated: use kylinbot_core-msg:KylinMsg instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <KylinMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'cbus-val :lambda-list '(m))
(cl:defmethod cbus-val ((m <KylinMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:cbus-val is deprecated.  Use kylinbot_core-msg:cbus instead.")
  (cbus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KylinMsg>) ostream)
  "Serializes a message object of type '<KylinMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cbus) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KylinMsg>) istream)
  "Deserializes a message object of type '<KylinMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cbus) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KylinMsg>)))
  "Returns string type for a message object of type '<KylinMsg>"
  "kylinbot_core/KylinMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KylinMsg)))
  "Returns string type for a message object of type 'KylinMsg"
  "kylinbot_core/KylinMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KylinMsg>)))
  "Returns md5sum for a message object of type '<KylinMsg>"
  "7131cdc32dd59ffa695dfef23c1bbcb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KylinMsg)))
  "Returns md5sum for a message object of type 'KylinMsg"
  "7131cdc32dd59ffa695dfef23c1bbcb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KylinMsg>)))
  "Returns full string definition for message of type '<KylinMsg>"
  (cl:format cl:nil "uint32 frame_id~%CBUS cbus~%~%================================================================================~%MSG: kylinbot_core/CBUS~%uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KylinMsg)))
  "Returns full string definition for message of type 'KylinMsg"
  (cl:format cl:nil "uint32 frame_id~%CBUS cbus~%~%================================================================================~%MSG: kylinbot_core/CBUS~%uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KylinMsg>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cbus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KylinMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'KylinMsg
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':cbus (cbus msg))
))
