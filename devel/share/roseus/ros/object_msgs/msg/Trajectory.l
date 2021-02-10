;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::Trajectory)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'Trajectory (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::TRAJECTORY")
  (make-package "OBJECT_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_msgs::Trajectory
  :super ros::object
  :slots (_header _n _dt _x _y _yaw _kappa _a _v _t0 ))

(defmethod object_msgs::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:n __n) 0)
    ((:dt __dt) 0.0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yaw __yaw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kappa __kappa) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:a __a) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t0 __t0) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _n (round __n))
   (setq _dt (float __dt))
   (setq _x __x)
   (setq _y __y)
   (setq _yaw __yaw)
   (setq _kappa __kappa)
   (setq _a __a)
   (setq _v __v)
   (setq _t0 __t0)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:t0
   (&optional __t0)
   (if __t0 (setq _t0 __t0)) _t0)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _n
    4
    ;; float32 _dt
    4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _yaw
    (* 4    (length _yaw)) 4
    ;; float32[] _kappa
    (* 4    (length _kappa)) 4
    ;; float32[] _a
    (* 4    (length _a)) 4
    ;; float32[] _v
    (* 4    (length _v)) 4
    ;; time _t0
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _n
       (write-long _n s)
     ;; float32 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _yaw
     (write-long (length _yaw) s)
     (dotimes (i (length _yaw))
       (sys::poke (elt _yaw i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _kappa
     (write-long (length _kappa) s)
     (dotimes (i (length _kappa))
       (sys::poke (elt _kappa i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _a
     (write-long (length _a) s)
     (dotimes (i (length _a))
       (sys::poke (elt _a i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v
     (write-long (length _v) s)
     (dotimes (i (length _v))
       (sys::poke (elt _v i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; time _t0
       (write-long (send _t0 :sec) s) (write-long (send _t0 :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _n
     (setq _n (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dt
     (setq _dt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yaw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yaw i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _kappa
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kappa (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kappa i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _a i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; time _t0
     (send _t0 :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t0 :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get object_msgs::Trajectory :md5sum-) "b804e4a65244f573ff8ce3aa030bf62b")
(setf (get object_msgs::Trajectory :datatype-) "object_msgs/Trajectory")
(setf (get object_msgs::Trajectory :definition-)
      "std_msgs/Header header
int32 n
float32 dt
float32[] x
float32[] y
float32[] yaw
float32[] kappa
float32[] a
float32[] v
time t0  # time corresponding x[0]
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



(provide :object_msgs/Trajectory "b804e4a65244f573ff8ce3aa030bf62b")


