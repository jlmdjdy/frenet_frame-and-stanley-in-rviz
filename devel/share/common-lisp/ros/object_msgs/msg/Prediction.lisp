; Auto-generated. Do not edit!


(cl:in-package object_msgs-msg)


;//! \htmlinclude Prediction.msg.html

(cl:defclass <Prediction> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (n_predictions
    :reader n_predictions
    :initarg :n_predictions
    :type cl:integer
    :initform 0)
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (predictions
    :reader predictions
    :initarg :predictions
    :type (cl:vector object_msgs-msg:Object)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:Object :initial-element (cl:make-instance 'object_msgs-msg:Object)))
   (sigx
    :reader sigx
    :initarg :sigx
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sigy
    :reader sigy
    :initarg :sigy
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rho
    :reader rho
    :initarg :rho
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (t0
    :reader t0
    :initarg :t0
    :type cl:real
    :initform 0))
)

(cl:defclass Prediction (<Prediction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Prediction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Prediction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_msgs-msg:<Prediction> is deprecated: use object_msgs-msg:Prediction instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:header-val is deprecated.  Use object_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:id-val is deprecated.  Use object_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'n_predictions-val :lambda-list '(m))
(cl:defmethod n_predictions-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:n_predictions-val is deprecated.  Use object_msgs-msg:n_predictions instead.")
  (n_predictions m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:dt-val is deprecated.  Use object_msgs-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'predictions-val :lambda-list '(m))
(cl:defmethod predictions-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:predictions-val is deprecated.  Use object_msgs-msg:predictions instead.")
  (predictions m))

(cl:ensure-generic-function 'sigx-val :lambda-list '(m))
(cl:defmethod sigx-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:sigx-val is deprecated.  Use object_msgs-msg:sigx instead.")
  (sigx m))

(cl:ensure-generic-function 'sigy-val :lambda-list '(m))
(cl:defmethod sigy-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:sigy-val is deprecated.  Use object_msgs-msg:sigy instead.")
  (sigy m))

(cl:ensure-generic-function 'rho-val :lambda-list '(m))
(cl:defmethod rho-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:rho-val is deprecated.  Use object_msgs-msg:rho instead.")
  (rho m))

(cl:ensure-generic-function 't0-val :lambda-list '(m))
(cl:defmethod t0-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:t0-val is deprecated.  Use object_msgs-msg:t0 instead.")
  (t0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Prediction>) ostream)
  "Serializes a message object of type '<Prediction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_predictions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_predictions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'n_predictions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'n_predictions)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predictions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predictions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sigx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'sigx))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sigy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'sigy))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rho))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rho))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't0)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't0) (cl:floor (cl:slot-value msg 't0)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Prediction>) istream)
  "Deserializes a message object of type '<Prediction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_predictions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_predictions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'n_predictions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'n_predictions)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predictions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predictions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sigx) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sigx)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sigy) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sigy)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rho) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rho)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't0) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Prediction>)))
  "Returns string type for a message object of type '<Prediction>"
  "object_msgs/Prediction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Prediction)))
  "Returns string type for a message object of type 'Prediction"
  "object_msgs/Prediction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Prediction>)))
  "Returns md5sum for a message object of type '<Prediction>"
  "62eb5942cfcf183980a3aa9c64433045")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Prediction)))
  "Returns md5sum for a message object of type 'Prediction"
  "62eb5942cfcf183980a3aa9c64433045")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Prediction>)))
  "Returns full string definition for message of type '<Prediction>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 id~%~%uint32 n_predictions~%float32 dt  # s~%object_msgs/Object[] predictions~%~%float32[] sigx~%float32[] sigy~%float32[] rho~%time t0  # time corresponding prediction[0]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/Object~%std_msgs/Header header~%uint32 id~%~%# The type of classification given to this object.~%uint8 classification~%uint8 CLASSIFICATION_UNKNOWN=0~%uint8 CLASSIFICATION_CAR=1~%uint8 CLASSIFICATION_PEDESTRIAN=2~%uint8 CLASSIFICATION_CYCLIST=3~%~%# The detected position and orientation of the object.~%float32 x       # m~%float32 y       # m~%float32 yaw     # rad~%~%float32 v       # m/s~%float32 yawrate # rad/s~%~%float32 a      # m/ss~%float32 delta  # radian~%~%# size~%float32 L     # m~%float32 W     # m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Prediction)))
  "Returns full string definition for message of type 'Prediction"
  (cl:format cl:nil "std_msgs/Header header~%uint32 id~%~%uint32 n_predictions~%float32 dt  # s~%object_msgs/Object[] predictions~%~%float32[] sigx~%float32[] sigy~%float32[] rho~%time t0  # time corresponding prediction[0]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/Object~%std_msgs/Header header~%uint32 id~%~%# The type of classification given to this object.~%uint8 classification~%uint8 CLASSIFICATION_UNKNOWN=0~%uint8 CLASSIFICATION_CAR=1~%uint8 CLASSIFICATION_PEDESTRIAN=2~%uint8 CLASSIFICATION_CYCLIST=3~%~%# The detected position and orientation of the object.~%float32 x       # m~%float32 y       # m~%float32 yaw     # rad~%~%float32 v       # m/s~%float32 yawrate # rad/s~%~%float32 a      # m/ss~%float32 delta  # radian~%~%# size~%float32 L     # m~%float32 W     # m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Prediction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predictions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sigx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sigy) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rho) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Prediction>))
  "Converts a ROS message object to a list"
  (cl:list 'Prediction
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':n_predictions (n_predictions msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':predictions (predictions msg))
    (cl:cons ':sigx (sigx msg))
    (cl:cons ':sigy (sigy msg))
    (cl:cons ':rho (rho msg))
    (cl:cons ':t0 (t0 msg))
))
