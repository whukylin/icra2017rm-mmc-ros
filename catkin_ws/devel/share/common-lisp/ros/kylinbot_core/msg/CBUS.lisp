; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude CBUS.msg.html

(cl:defclass <CBUS> (roslisp-msg-protocol:ros-message)
  ((fs
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

(cl:defclass CBUS (<CBUS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CBUS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CBUS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<CBUS> is deprecated: use kylinbot_core-msg:CBUS instead.")))

(cl:ensure-generic-function 'fs-val :lambda-list '(m))
(cl:defmethod fs-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:fs-val is deprecated.  Use kylinbot_core-msg:fs instead.")
  (fs m))

(cl:ensure-generic-function 'px-val :lambda-list '(m))
(cl:defmethod px-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:px-val is deprecated.  Use kylinbot_core-msg:px instead.")
  (px m))

(cl:ensure-generic-function 'py-val :lambda-list '(m))
(cl:defmethod py-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:py-val is deprecated.  Use kylinbot_core-msg:py instead.")
  (py m))

(cl:ensure-generic-function 'pz-val :lambda-list '(m))
(cl:defmethod pz-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:pz-val is deprecated.  Use kylinbot_core-msg:pz instead.")
  (pz m))

(cl:ensure-generic-function 'pe-val :lambda-list '(m))
(cl:defmethod pe-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:pe-val is deprecated.  Use kylinbot_core-msg:pe instead.")
  (pe m))

(cl:ensure-generic-function 'pc-val :lambda-list '(m))
(cl:defmethod pc-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:pc-val is deprecated.  Use kylinbot_core-msg:pc instead.")
  (pc m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vx-val is deprecated.  Use kylinbot_core-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vy-val is deprecated.  Use kylinbot_core-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vz-val is deprecated.  Use kylinbot_core-msg:vz instead.")
  (vz m))

(cl:ensure-generic-function 've-val :lambda-list '(m))
(cl:defmethod ve-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:ve-val is deprecated.  Use kylinbot_core-msg:ve instead.")
  (ve m))

(cl:ensure-generic-function 'vc-val :lambda-list '(m))
(cl:defmethod vc-val ((m <CBUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:vc-val is deprecated.  Use kylinbot_core-msg:vc instead.")
  (vc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CBUS>) ostream)
  "Serializes a message object of type '<CBUS>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CBUS>) istream)
  "Deserializes a message object of type '<CBUS>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CBUS>)))
  "Returns string type for a message object of type '<CBUS>"
  "kylinbot_core/CBUS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CBUS)))
  "Returns string type for a message object of type 'CBUS"
  "kylinbot_core/CBUS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CBUS>)))
  "Returns md5sum for a message object of type '<CBUS>"
  "93fce3d0dc3169a0815342b4ce4be9c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CBUS)))
  "Returns md5sum for a message object of type 'CBUS"
  "93fce3d0dc3169a0815342b4ce4be9c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CBUS>)))
  "Returns full string definition for message of type '<CBUS>"
  (cl:format cl:nil "uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CBUS)))
  "Returns full string definition for message of type 'CBUS"
  (cl:format cl:nil "uint32 fs~%int16 px~%int16 py~%int16 pz~%int16 pe~%int16 pc~%int16 vx~%int16 vy~%int16 vz~%int16 ve~%int16 vc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CBUS>))
  (cl:+ 0
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CBUS>))
  "Converts a ROS message object to a list"
  (cl:list 'CBUS
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
