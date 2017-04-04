; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude CBus.msg.html

(cl:defclass <CBus> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (fs
    :reader fs
    :initarg :fs
    :type cl:integer
    :initform 0)
   (px
    :reader px
    :initarg :px
    :type cl:fixnum
    :initform 0)
   (py
    :reader py
    :initarg :py
    :type cl:fixnum
    :initform 0)
   (pz
    :reader pz
    :initarg :pz
    :type cl:fixnum
    :initform 0)
   (pe
    :reader pe
    :initarg :pe
    :type cl:fixnum
    :initform 0)
   (pc
    :reader pc
    :initarg :pc
    :type cl:fixnum
    :initform 0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:fixnum
    :initform 0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:fixnum
    :initform 0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:fixnum
    :initform 0)
   (ve
    :reader ve
    :initarg :ve
    :type cl:fixnum
    :initform 0)
   (vc
    :reader vc
    :initarg :vc
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CBus (<CBus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CBus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CBus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<CBus> is deprecated: use kylinbot_core-msg:CBus instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'fs-val :lambda-list '(m))
(cl:defmethod fs-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:fs-val is deprecated.  Use kylinbot_core-msg:fs instead.")
  (fs m))

(cl:ensure-generic-function 'px-val :lambda-list '(m))
(cl:defmethod px-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:px-val is deprecated.  Use kylinbot_core-msg:px instead.")
  (px m))

(cl:ensure-generic-function 'py-val :lambda-list '(m))
(cl:defmethod py-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:py-val is deprecated.  Use kylinbot_core-msg:py instead.")
  (py m))

(cl:ensure-generic-function 'pz-val :lambda-list '(m))
(cl:defmethod pz-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:pz-val is deprecated.  Use kylinbot_core-msg:pz instead.")
  (pz m))

(cl:ensure-generic-function 'pe-val :lambda-list '(m))
(cl:defmethod pe-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:pe-val is deprecated.  Use kylinbot_core-msg:pe instead.")
  (pe m))

(cl:ensure-generic-function 'pc-val :lambda-list '(m))
(cl:defmethod pc-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:pc-val is deprecated.  Use kylinbot_core-msg:pc instead.")
  (pc m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vx-val is deprecated.  Use kylinbot_core-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vy-val is deprecated.  Use kylinbot_core-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vz-val is deprecated.  Use kylinbot_core-msg:vz instead.")
  (vz m))

(cl:ensure-generic-function 've-val :lambda-list '(m))
(cl:defmethod ve-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:ve-val is deprecated.  Use kylinbot_core-msg:ve instead.")
  (ve m))

(cl:ensure-generic-function 'vc-val :lambda-list '(m))
(cl:defmethod vc-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vc-val is deprecated.  Use kylinbot_core-msg:vc instead.")
  (vc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CBus>) ostream)
  "Serializes a message object of type '<CBus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fs)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'px)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'py)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pe)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 've)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CBus>) istream)
  "Deserializes a message object of type '<CBus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fs)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'px) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'py) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pe) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vy) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 've) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CBus>)))
  "Returns string type for a message object of type '<CBus>"
  "kylinbot_core/CBus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CBus)))
  "Returns string type for a message object of type 'CBus"
  "kylinbot_core/CBus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CBus>)))
  "Returns md5sum for a message object of type '<CBus>"
  "3967d8d8fa11fc1d390feac8e67e859c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CBus)))
  "Returns md5sum for a message object of type 'CBus"
  "3967d8d8fa11fc1d390feac8e67e859c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CBus>)))
  "Returns full string definition for message of type '<CBus>"
  (cl:format cl:nil "uint32 frame_id~%uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CBus)))
  "Returns full string definition for message of type 'CBus"
  (cl:format cl:nil "uint32 frame_id~%uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CBus>))
  (cl:+ 0
     4
     4
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CBus>))
  "Converts a ROS message object to a list"
  (cl:list 'CBus
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':fs (fs msg))
    (cl:cons ':px (px msg))
    (cl:cons ':py (py msg))
    (cl:cons ':pz (pz msg))
    (cl:cons ':pe (pe msg))
    (cl:cons ':pc (pc msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':ve (ve msg))
    (cl:cons ':vc (vc msg))
))
