; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude Kylin.msg.html

(cl:defclass <Kylin> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Kylin (<Kylin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kylin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kylin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<Kylin> is deprecated: use kylinbot_core-msg:Kylin instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Kylin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'cbus-val :lambda-list '(m))
(cl:defmethod cbus-val ((m <Kylin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:cbus-val is deprecated.  Use kylinbot_core-msg:cbus instead.")
  (cbus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kylin>) ostream)
  "Serializes a message object of type '<Kylin>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cbus) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kylin>) istream)
  "Deserializes a message object of type '<Kylin>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cbus) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kylin>)))
  "Returns string type for a message object of type '<Kylin>"
  "kylinbot_core/Kylin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kylin)))
  "Returns string type for a message object of type 'Kylin"
  "kylinbot_core/Kylin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kylin>)))
  "Returns md5sum for a message object of type '<Kylin>"
  "7131cdc32dd59ffa695dfef23c1bbcb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kylin)))
  "Returns md5sum for a message object of type 'Kylin"
  "7131cdc32dd59ffa695dfef23c1bbcb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kylin>)))
  "Returns full string definition for message of type '<Kylin>"
  (cl:format cl:nil "uint32 frame_id~%CBUS cbus~%~%================================================================================~%MSG: kylinbot_core/CBUS~%uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kylin)))
  "Returns full string definition for message of type 'Kylin"
  (cl:format cl:nil "uint32 frame_id~%CBUS cbus~%~%================================================================================~%MSG: kylinbot_core/CBUS~%uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kylin>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cbus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kylin>))
  "Converts a ROS message object to a list"
  (cl:list 'Kylin
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':cbus (cbus msg))
))
