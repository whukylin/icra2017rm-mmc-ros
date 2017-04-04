; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude Sonar.msg.html

(cl:defclass <Sonar> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (fixed
    :reader fixed
    :initarg :fixed
    :type cl:fixnum
    :initform 0)
   (moble
    :reader moble
    :initarg :moble
    :type cl:fixnum
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Sonar (<Sonar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sonar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sonar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<Sonar> is deprecated: use kylinbot_core-msg:Sonar instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Sonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'fixed-val :lambda-list '(m))
(cl:defmethod fixed-val ((m <Sonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:fixed-val is deprecated.  Use kylinbot_core-msg:fixed instead.")
  (fixed m))

(cl:ensure-generic-function 'moble-val :lambda-list '(m))
(cl:defmethod moble-val ((m <Sonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:moble-val is deprecated.  Use kylinbot_core-msg:moble instead.")
  (moble m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <Sonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:left-val is deprecated.  Use kylinbot_core-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <Sonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:right-val is deprecated.  Use kylinbot_core-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sonar>) ostream)
  "Serializes a message object of type '<Sonar>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moble)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'moble)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sonar>) istream)
  "Deserializes a message object of type '<Sonar>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moble)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'moble)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sonar>)))
  "Returns string type for a message object of type '<Sonar>"
  "kylinbot_core/Sonar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sonar)))
  "Returns string type for a message object of type 'Sonar"
  "kylinbot_core/Sonar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sonar>)))
  "Returns md5sum for a message object of type '<Sonar>"
  "32e3008d8c0744f5206e9f75d97600c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sonar)))
  "Returns md5sum for a message object of type 'Sonar"
  "32e3008d8c0744f5206e9f75d97600c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sonar>)))
  "Returns full string definition for message of type '<Sonar>"
  (cl:format cl:nil "uint32 frame_id~%uint16 fixed~%uint16 moble~%uint16 left~%uint16 right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sonar)))
  "Returns full string definition for message of type 'Sonar"
  (cl:format cl:nil "uint32 frame_id~%uint16 fixed~%uint16 moble~%uint16 left~%uint16 right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sonar>))
  (cl:+ 0
     4
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sonar>))
  "Converts a ROS message object to a list"
  (cl:list 'Sonar
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':fixed (fixed msg))
    (cl:cons ':moble (moble msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
