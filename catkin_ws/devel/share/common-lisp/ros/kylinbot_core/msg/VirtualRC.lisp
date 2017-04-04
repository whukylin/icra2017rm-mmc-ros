; Auto-generated. Do not edit!


(cl:in-package kylinbot_core-msg)


;//! \htmlinclude VirtualRC.msg.html

(cl:defclass <VirtualRC> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass VirtualRC (<VirtualRC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualRC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualRC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kylinbot_core-msg:<VirtualRC> is deprecated: use kylinbot_core-msg:VirtualRC instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <VirtualRC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:frame_id-val is deprecated.  Use kylinbot_core-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <VirtualRC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kylinbot_core-msg:data-val is deprecated.  Use kylinbot_core-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualRC>) ostream)
  "Serializes a message object of type '<VirtualRC>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualRC>) istream)
  "Deserializes a message object of type '<VirtualRC>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualRC>)))
  "Returns string type for a message object of type '<VirtualRC>"
  "kylinbot_core/VirtualRC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualRC)))
  "Returns string type for a message object of type 'VirtualRC"
  "kylinbot_core/VirtualRC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualRC>)))
  "Returns md5sum for a message object of type '<VirtualRC>"
  "a2b2bda6c2cf9e9e80fa2e50b4c2f75c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualRC)))
  "Returns md5sum for a message object of type 'VirtualRC"
  "a2b2bda6c2cf9e9e80fa2e50b4c2f75c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualRC>)))
  "Returns full string definition for message of type '<VirtualRC>"
  (cl:format cl:nil "uint32 frame_id~%uint8[6] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualRC)))
  "Returns full string definition for message of type 'VirtualRC"
  (cl:format cl:nil "uint32 frame_id~%uint8[6] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualRC>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualRC>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualRC
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':data (data msg))
))
