; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude PosCalib.msg.html

(cl:defclass <PosCalib> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (el
    :reader el
    :initarg :el
    :type cl:fixnum
    :initform 0)
   (eh
    :reader eh
    :initarg :eh
    :type cl:fixnum
    :initform 0)
   (cl
    :reader cl
    :initarg :cl
    :type cl:fixnum
    :initform 0)
   (ch
    :reader ch
    :initarg :ch
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PosCalib (<PosCalib>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosCalib>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosCalib)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<PosCalib> is deprecated: use kylinbot_core-msg:PosCalib instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <PosCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'el-val :lambda-list '(m))
(cl:defmethod el-val ((m <PosCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:el-val is deprecated.  Use kylinbot_core-msg:el instead.")
  (el m))

(cl:ensure-generic-function 'eh-val :lambda-list '(m))
(cl:defmethod eh-val ((m <PosCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:eh-val is deprecated.  Use kylinbot_core-msg:eh instead.")
  (eh m))

(cl:ensure-generic-function 'cl-val :lambda-list '(m))
(cl:defmethod cl-val ((m <PosCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:cl-val is deprecated.  Use kylinbot_core-msg:cl instead.")
  (cl m))

(cl:ensure-generic-function 'ch-val :lambda-list '(m))
(cl:defmethod ch-val ((m <PosCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:ch-val is deprecated.  Use kylinbot_core-msg:ch instead.")
  (ch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosCalib>) ostream)
  "Serializes a message object of type '<PosCalib>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'el)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'eh)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosCalib>) istream)
  "Deserializes a message object of type '<PosCalib>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'el) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'eh) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cl) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ch) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosCalib>)))
  "Returns string type for a message object of type '<PosCalib>"
  "kylinbot_core/PosCalib")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosCalib)))
  "Returns string type for a message object of type 'PosCalib"
  "kylinbot_core/PosCalib")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosCalib>)))
  "Returns md5sum for a message object of type '<PosCalib>"
  "908b6b2028673e85c08cdffdd515277c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosCalib)))
  "Returns md5sum for a message object of type 'PosCalib"
  "908b6b2028673e85c08cdffdd515277c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosCalib>)))
  "Returns full string definition for message of type '<PosCalib>"
  (cl:format cl:nil "uint32 frame_id~%int16 el~%int16 eh~%int16 cl~%int16 ch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosCalib)))
  "Returns full string definition for message of type 'PosCalib"
  (cl:format cl:nil "uint32 frame_id~%int16 el~%int16 eh~%int16 cl~%int16 ch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosCalib>))
  (cl:+ 0
     4
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosCalib>))
  "Converts a ROS message object to a list"
  (cl:list 'PosCalib
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':el (el msg))
    (cl:cons ':eh (eh msg))
    (cl:cons ':cl (cl msg))
    (cl:cons ':ch (ch msg))
))
