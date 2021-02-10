;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::Prediction)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'Prediction (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::PREDICTION")
  (make-package "OBJECT_MSGS::PREDICTION"))

(in-package "ROS")
;;//! \htmlinclude Prediction.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_msgs::Prediction
  :super ros::object
  :slots (_header _id _n_predictions _dt _predictions _sigx _sigy _rho _t0 ))

(defmethod object_msgs::Prediction
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:n_predictions __n_predictions) 0)
    ((:dt __dt) 0.0)
    ((:predictions __predictions) (let (r) (dotimes (i 0) (push (instance object_msgs::Object :init) r)) r))
    ((:sigx __sigx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sigy __sigy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rho __rho) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t0 __t0) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _n_predictions (round __n_predictions))
   (setq _dt (float __dt))
   (setq _predictions __predictions)
   (setq _sigx __sigx)
   (setq _sigy __sigy)
   (setq _rho __rho)
   (setq _t0 __t0)
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
  (:n_predictions
   (&optional __n_predictions)
   (if __n_predictions (setq _n_predictions __n_predictions)) _n_predictions)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:predictions
   (&rest __predictions)
   (if (keywordp (car __predictions))
       (send* _predictions __predictions)
     (progn
       (if __predictions (setq _predictions (car __predictions)))
       _predictions)))
  (:sigx
   (&optional __sigx)
   (if __sigx (setq _sigx __sigx)) _sigx)
  (:sigy
   (&optional __sigy)
   (if __sigy (setq _sigy __sigy)) _sigy)
  (:rho
   (&optional __rho)
   (if __rho (setq _rho __rho)) _rho)
  (:t0
   (&optional __t0)
   (if __t0 (setq _t0 __t0)) _t0)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint32 _n_predictions
    4
    ;; float32 _dt
    4
    ;; object_msgs/Object[] _predictions
    (apply #'+ (send-all _predictions :serialization-length)) 4
    ;; float32[] _sigx
    (* 4    (length _sigx)) 4
    ;; float32[] _sigy
    (* 4    (length _sigy)) 4
    ;; float32[] _rho
    (* 4    (length _rho)) 4
    ;; time _t0
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _n_predictions
       (write-long _n_predictions s)
     ;; float32 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; object_msgs/Object[] _predictions
     (write-long (length _predictions) s)
     (dolist (elem _predictions)
       (send elem :serialize s)
       )
     ;; float32[] _sigx
     (write-long (length _sigx) s)
     (dotimes (i (length _sigx))
       (sys::poke (elt _sigx i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _sigy
     (write-long (length _sigy) s)
     (dotimes (i (length _sigy))
       (sys::poke (elt _sigy i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rho
     (write-long (length _rho) s)
     (dotimes (i (length _rho))
       (sys::poke (elt _rho i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; time _t0
       (write-long (send _t0 :sec) s) (write-long (send _t0 :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _n_predictions
     (setq _n_predictions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dt
     (setq _dt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; object_msgs/Object[] _predictions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predictions (let (r) (dotimes (i n) (push (instance object_msgs::Object :init) r)) r))
     (dolist (elem- _predictions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _sigx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sigx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sigx i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _sigy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sigy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sigy i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rho
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rho (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rho i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; time _t0
     (send _t0 :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t0 :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get object_msgs::Prediction :md5sum-) "62eb5942cfcf183980a3aa9c64433045")
(setf (get object_msgs::Prediction :datatype-) "object_msgs/Prediction")
(setf (get object_msgs::Prediction :definition-)
      "std_msgs/Header header
uint32 id

uint32 n_predictions
float32 dt  # s
object_msgs/Object[] predictions

float32[] sigx
float32[] sigy
float32[] rho
time t0  # time corresponding prediction[0]
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



(provide :object_msgs/Prediction "62eb5942cfcf183980a3aa9c64433045")


