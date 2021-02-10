; Auto-generated. Do not edit!


(cl:in-package object_msgs-msg)


;//! \htmlinclude Predictions.msg.html

(cl:defclass <Predictions> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (n_prediction
    :reader n_prediction
    :initarg :n_prediction
    :type cl:integer
    :initform 0)
   (predictions
    :reader predictions
    :initarg :predictions
    :type (cl:vector object_msgs-msg:Prediction)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:Prediction :initial-element (cl:make-instance 'object_msgs-msg:Prediction)))
   (prob
    :reader prob
    :initarg :prob
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Predictions (<Predictions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Predictions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Predictions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_msgs-msg:<Predictions> is deprecated: use object_msgs-msg:Predictions instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:id-val is deprecated.  Use object_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'n_prediction-val :lambda-list '(m))
(cl:defmethod n_prediction-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:n_prediction-val is deprecated.  Use object_msgs-msg:n_prediction instead.")
  (n_prediction m))

(cl:ensure-generic-function 'predictions-val :lambda-list '(m))
(cl:defmethod predictions-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:predictions-val is deprecated.  Use object_msgs-msg:predictions instead.")
  (predictions m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:prob-val is deprecated.  Use object_msgs-msg:prob instead.")
  (prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Predictions>) ostream)
  "Serializes a message object of type '<Predictions>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'n_prediction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predictions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predictions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'prob))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Predictions>) istream)
  "Deserializes a message object of type '<Predictions>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n_prediction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predictions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predictions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:Prediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prob) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prob)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Predictions>)))
  "Returns string type for a message object of type '<Predictions>"
  "object_msgs/Predictions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Predictions)))
  "Returns string type for a message object of type 'Predictions"
  "object_msgs/Predictions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Predictions>)))
  "Returns md5sum for a message object of type '<Predictions>"
  "f8937a5011813d4b881807b890c93552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Predictions)))
  "Returns md5sum for a message object of type 'Predictions"
  "f8937a5011813d4b881807b890c93552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Predictions>)))
  "Returns full string definition for message of type '<Predictions>"
  (cl:format cl:nil "int32 id~%int32 n_prediction~%object_msgs/Prediction[] predictions~%float32[] prob~%~%================================================================================~%MSG: object_msgs/Prediction~%std_msgs/Header header~%uint32 id~%~%uint32 n_predictions~%float32 dt  # s~%object_msgs/Object[] predictions~%~%float32[] sigx~%float32[] sigy~%float32[] rho~%time t0  # time corresponding prediction[0]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/Object~%std_msgs/Header header~%uint32 id~%~%# The type of classification given to this object.~%uint8 classification~%uint8 CLASSIFICATION_UNKNOWN=0~%uint8 CLASSIFICATION_CAR=1~%uint8 CLASSIFICATION_PEDESTRIAN=2~%uint8 CLASSIFICATION_CYCLIST=3~%~%# The detected position and orientation of the object.~%float32 x       # m~%float32 y       # m~%float32 yaw     # rad~%~%float32 v       # m/s~%float32 yawrate # rad/s~%~%float32 a      # m/ss~%float32 delta  # radian~%~%# size~%float32 L     # m~%float32 W     # m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Predictions)))
  "Returns full string definition for message of type 'Predictions"
  (cl:format cl:nil "int32 id~%int32 n_prediction~%object_msgs/Prediction[] predictions~%float32[] prob~%~%================================================================================~%MSG: object_msgs/Prediction~%std_msgs/Header header~%uint32 id~%~%uint32 n_predictions~%float32 dt  # s~%object_msgs/Object[] predictions~%~%float32[] sigx~%float32[] sigy~%float32[] rho~%time t0  # time corresponding prediction[0]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/Object~%std_msgs/Header header~%uint32 id~%~%# The type of classification given to this object.~%uint8 classification~%uint8 CLASSIFICATION_UNKNOWN=0~%uint8 CLASSIFICATION_CAR=1~%uint8 CLASSIFICATION_PEDESTRIAN=2~%uint8 CLASSIFICATION_CYCLIST=3~%~%# The detected position and orientation of the object.~%float32 x       # m~%float32 y       # m~%float32 yaw     # rad~%~%float32 v       # m/s~%float32 yawrate # rad/s~%~%float32 a      # m/ss~%float32 delta  # radian~%~%# size~%float32 L     # m~%float32 W     # m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Predictions>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predictions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prob) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Predictions>))
  "Converts a ROS message object to a list"
  (cl:list 'Predictions
    (cl:cons ':id (id msg))
    (cl:cons ':n_prediction (n_prediction msg))
    (cl:cons ':predictions (predictions msg))
    (cl:cons ':prob (prob msg))
))
