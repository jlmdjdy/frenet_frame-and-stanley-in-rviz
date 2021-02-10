; Auto-generated. Do not edit!


(cl:in-package object_msgs-msg)


;//! \htmlinclude trajectory_array.msg.html

(cl:defclass <trajectory_array> (roslisp-msg-protocol:ros-message)
  ((all_car
    :reader all_car
    :initarg :all_car
    :type (cl:vector object_msgs-msg:trajectory)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:trajectory :initial-element (cl:make-instance 'object_msgs-msg:trajectory)))
   (host_car_id
    :reader host_car_id
    :initarg :host_car_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass trajectory_array (<trajectory_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trajectory_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trajectory_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_msgs-msg:<trajectory_array> is deprecated: use object_msgs-msg:trajectory_array instead.")))

(cl:ensure-generic-function 'all_car-val :lambda-list '(m))
(cl:defmethod all_car-val ((m <trajectory_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:all_car-val is deprecated.  Use object_msgs-msg:all_car instead.")
  (all_car m))

(cl:ensure-generic-function 'host_car_id-val :lambda-list '(m))
(cl:defmethod host_car_id-val ((m <trajectory_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:host_car_id-val is deprecated.  Use object_msgs-msg:host_car_id instead.")
  (host_car_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trajectory_array>) ostream)
  "Serializes a message object of type '<trajectory_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'all_car))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'all_car))
  (cl:let* ((signed (cl:slot-value msg 'host_car_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trajectory_array>) istream)
  "Deserializes a message object of type '<trajectory_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'all_car) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'all_car)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'host_car_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trajectory_array>)))
  "Returns string type for a message object of type '<trajectory_array>"
  "object_msgs/trajectory_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trajectory_array)))
  "Returns string type for a message object of type 'trajectory_array"
  "object_msgs/trajectory_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trajectory_array>)))
  "Returns md5sum for a message object of type '<trajectory_array>"
  "92ff43ffdd6900a1509a628214083282")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trajectory_array)))
  "Returns md5sum for a message object of type 'trajectory_array"
  "92ff43ffdd6900a1509a628214083282")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trajectory_array>)))
  "Returns full string definition for message of type '<trajectory_array>"
  (cl:format cl:nil "trajectory[] all_car~%int8 host_car_id~%================================================================================~%MSG: object_msgs/trajectory~%std_msgs/Header header~%int8 id                 # car id~%bool[] mask             # validity : 1 or 0~%int8 valid_sequence_num # ex) valid_sequence_num=4 means that only first 4 sequences are valid~%Object[] trajectory     # ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/Object~%std_msgs/Header header~%uint32 id~%~%# The type of classification given to this object.~%uint8 classification~%uint8 CLASSIFICATION_UNKNOWN=0~%uint8 CLASSIFICATION_CAR=1~%uint8 CLASSIFICATION_PEDESTRIAN=2~%uint8 CLASSIFICATION_CYCLIST=3~%~%# The detected position and orientation of the object.~%float32 x       # m~%float32 y       # m~%float32 yaw     # rad~%~%float32 v       # m/s~%float32 yawrate # rad/s~%~%float32 a      # m/ss~%float32 delta  # radian~%~%# size~%float32 L     # m~%float32 W     # m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trajectory_array)))
  "Returns full string definition for message of type 'trajectory_array"
  (cl:format cl:nil "trajectory[] all_car~%int8 host_car_id~%================================================================================~%MSG: object_msgs/trajectory~%std_msgs/Header header~%int8 id                 # car id~%bool[] mask             # validity : 1 or 0~%int8 valid_sequence_num # ex) valid_sequence_num=4 means that only first 4 sequences are valid~%Object[] trajectory     # ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/Object~%std_msgs/Header header~%uint32 id~%~%# The type of classification given to this object.~%uint8 classification~%uint8 CLASSIFICATION_UNKNOWN=0~%uint8 CLASSIFICATION_CAR=1~%uint8 CLASSIFICATION_PEDESTRIAN=2~%uint8 CLASSIFICATION_CYCLIST=3~%~%# The detected position and orientation of the object.~%float32 x       # m~%float32 y       # m~%float32 yaw     # rad~%~%float32 v       # m/s~%float32 yawrate # rad/s~%~%float32 a      # m/ss~%float32 delta  # radian~%~%# size~%float32 L     # m~%float32 W     # m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trajectory_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'all_car) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trajectory_array>))
  "Converts a ROS message object to a list"
  (cl:list 'trajectory_array
    (cl:cons ':all_car (all_car msg))
    (cl:cons ':host_car_id (host_car_id msg))
))
