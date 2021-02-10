;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::trajectory_array)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'trajectory_array (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::TRAJECTORY_ARRAY")
  (make-package "OBJECT_MSGS::TRAJECTORY_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude trajectory_array.msg.html


(defclass object_msgs::trajectory_array
  :super ros::object
  :slots (_all_car _host_car_id ))

(defmethod object_msgs::trajectory_array
  (:init
   (&key
    ((:all_car __all_car) (let (r) (dotimes (i 0) (push (instance object_msgs::trajectory :init) r)) r))
    ((:host_car_id __host_car_id) 0)
    )
   (send-super :init)
   (setq _all_car __all_car)
   (setq _host_car_id (round __host_car_id))
   self)
  (:all_car
   (&rest __all_car)
   (if (keywordp (car __all_car))
       (send* _all_car __all_car)
     (progn
       (if __all_car (setq _all_car (car __all_car)))
       _all_car)))
  (:host_car_id
   (&optional __host_car_id)
   (if __host_car_id (setq _host_car_id __host_car_id)) _host_car_id)
  (:serialization-length
   ()
   (+
    ;; object_msgs/trajectory[] _all_car
    (apply #'+ (send-all _all_car :serialization-length)) 4
    ;; int8 _host_car_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; object_msgs/trajectory[] _all_car
     (write-long (length _all_car) s)
     (dolist (elem _all_car)
       (send elem :serialize s)
       )
     ;; int8 _host_car_id
       (write-byte _host_car_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; object_msgs/trajectory[] _all_car
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _all_car (let (r) (dotimes (i n) (push (instance object_msgs::trajectory :init) r)) r))
     (dolist (elem- _all_car)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8 _host_car_id
     (setq _host_car_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _host_car_id 127) (setq _host_car_id (- _host_car_id 256)))
   ;;
   self)
  )

(setf (get object_msgs::trajectory_array :md5sum-) "92ff43ffdd6900a1509a628214083282")
(setf (get object_msgs::trajectory_array :datatype-) "object_msgs/trajectory_array")
(setf (get object_msgs::trajectory_array :definition-)
      "trajectory[] all_car
int8 host_car_id
================================================================================
MSG: object_msgs/trajectory
std_msgs/Header header
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



(provide :object_msgs/trajectory_array "92ff43ffdd6900a1509a628214083282")


