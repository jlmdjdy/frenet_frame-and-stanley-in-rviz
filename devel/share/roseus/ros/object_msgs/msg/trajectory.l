;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::trajectory)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'trajectory (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::TRAJECTORY")
  (make-package "OBJECT_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_msgs::trajectory
  :super ros::object
  :slots (_header _id _mask _valid_sequence_num _trajectory ))

(defmethod object_msgs::trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:mask __mask) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:valid_sequence_num __valid_sequence_num) 0)
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance object_msgs::Object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _mask __mask)
   (setq _valid_sequence_num (round __valid_sequence_num))
   (setq _trajectory __trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:valid_sequence_num
   (&optional __valid_sequence_num)
   (if __valid_sequence_num (setq _valid_sequence_num __valid_sequence_num)) _valid_sequence_num)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _id
    1
    ;; bool[] _mask
    (* 1    (length _mask)) 4
    ;; int8 _valid_sequence_num
    1
    ;; object_msgs/Object[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _id
       (write-byte _id s)
     ;; bool[] _mask
     (write-long (length _mask) s)
     (dotimes (i (length _mask))
       (if (elt _mask i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int8 _valid_sequence_num
       (write-byte _valid_sequence_num s)
     ;; object_msgs/Object[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; bool[] _mask
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mask (make-list n))
     (dotimes (i n)
     (setf (elt _mask i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int8 _valid_sequence_num
     (setq _valid_sequence_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _valid_sequence_num 127) (setq _valid_sequence_num (- _valid_sequence_num 256)))
   ;; object_msgs/Object[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance object_msgs::Object :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_msgs::trajectory :md5sum-) "6e678bf801db02c4ea2793e8464735ac")
(setf (get object_msgs::trajectory :datatype-) "object_msgs/trajectory")
(setf (get object_msgs::trajectory :definition-)
      "std_msgs/Header header
int8 id                 # car id
bool[] mask             # validity : 1 or 0
int8 valid_sequence_num # ex) valid_sequence_num=4 means that only first 4 sequences are valid
Object[] trajectory     # 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: object_msgs/Object
std_msgs/Header header
uint32 id

# The type of classification given to this object.
uint8 classification
uint8 CLASSIFICATION_UNKNOWN=0
uint8 CLASSIFICATION_CAR=1
uint8 CLASSIFICATION_PEDESTRIAN=2
uint8 CLASSIFICATION_CYCLIST=3

# The detected position and orientation of the object.
float32 x       # m
float32 y       # m
float32 yaw     # rad

float32 v       # m/s
float32 yawrate # rad/s

float32 a      # m/ss
float32 delta  # radian

# size
float32 L     # m
float32 W     # m

")



(provide :object_msgs/trajectory "6e678bf801db02c4ea2793e8464735ac")


