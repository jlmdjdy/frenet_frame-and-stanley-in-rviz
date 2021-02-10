;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::Object)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'Object (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::OBJECT")
  (make-package "OBJECT_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CLASSIFICATION_UNKNOWN*" (find-package "OBJECT_MSGS::OBJECT"))
(shadow '*CLASSIFICATION_UNKNOWN* (find-package "OBJECT_MSGS::OBJECT"))
(defconstant object_msgs::Object::*CLASSIFICATION_UNKNOWN* 0)
(intern "*CLASSIFICATION_CAR*" (find-package "OBJECT_MSGS::OBJECT"))
(shadow '*CLASSIFICATION_CAR* (find-package "OBJECT_MSGS::OBJECT"))
(defconstant object_msgs::Object::*CLASSIFICATION_CAR* 1)
(intern "*CLASSIFICATION_PEDESTRIAN*" (find-package "OBJECT_MSGS::OBJECT"))
(shadow '*CLASSIFICATION_PEDESTRIAN* (find-package "OBJECT_MSGS::OBJECT"))
(defconstant object_msgs::Object::*CLASSIFICATION_PEDESTRIAN* 2)
(intern "*CLASSIFICATION_CYCLIST*" (find-package "OBJECT_MSGS::OBJECT"))
(shadow '*CLASSIFICATION_CYCLIST* (find-package "OBJECT_MSGS::OBJECT"))
(defconstant object_msgs::Object::*CLASSIFICATION_CYCLIST* 3)
(defclass object_msgs::Object
  :super ros::object
  :slots (_header _id _classification _x _y _yaw _v _yawrate _a _delta _L _W ))

(defmethod object_msgs::Object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:classification __classification) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:v __v) 0.0)
    ((:yawrate __yawrate) 0.0)
    ((:a __a) 0.0)
    ((:delta __delta) 0.0)
    ((:L __L) 0.0)
    ((:W __W) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _classification (round __classification))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _v (float __v))
   (setq _yawrate (float __yawrate))
   (setq _a (float __a))
   (setq _delta (float __delta))
   (setq _L (float __L))
   (setq _W (float __W))
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
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:yawrate
   (&optional __yawrate)
   (if __yawrate (setq _yawrate __yawrate)) _yawrate)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:delta
   (&optional __delta)
   (if __delta (setq _delta __delta)) _delta)
  (:L
   (&optional __L)
   (if __L (setq _L __L)) _L)
  (:W
   (&optional __W)
   (if __W (setq _W __W)) _W)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint8 _classification
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ;; float32 _v
    4
    ;; float32 _yawrate
    4
    ;; float32 _a
    4
    ;; float32 _delta
    4
    ;; float32 _L
    4
    ;; float32 _W
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _classification
       (write-byte _classification s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yawrate
       (sys::poke _yawrate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _delta
       (sys::poke _delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L
       (sys::poke _L (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _W
       (sys::poke _W (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _classification
     (setq _classification (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yawrate
     (setq _yawrate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _delta
     (setq _delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L
     (setq _L (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _W
     (setq _W (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get object_msgs::Object :md5sum-) "32ba24332ff211559a1ab5ad41ef0d5f")
(setf (get object_msgs::Object :datatype-) "object_msgs/Object")
(setf (get object_msgs::Object :definition-)
      "std_msgs/Header header
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

")



(provide :object_msgs/Object "32ba24332ff211559a1ab5ad41ef0d5f")


