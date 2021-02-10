;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::Predictions)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'Predictions (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::PREDICTIONS")
  (make-package "OBJECT_MSGS::PREDICTIONS"))

(in-package "ROS")
;;//! \htmlinclude Predictions.msg.html


(defclass object_msgs::Predictions
  :super ros::object
  :slots (_id _n_prediction _predictions _prob ))

(defmethod object_msgs::Predictions
  (:init
   (&key
    ((:id __id) 0)
    ((:n_prediction __n_prediction) 0)
    ((:predictions __predictions) (let (r) (dotimes (i 0) (push (instance object_msgs::Prediction :init) r)) r))
    ((:prob __prob) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _n_prediction (round __n_prediction))
   (setq _predictions __predictions)
   (setq _prob __prob)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:n_prediction
   (&optional __n_prediction)
   (if __n_prediction (setq _n_prediction __n_prediction)) _n_prediction)
  (:predictions
   (&rest __predictions)
   (if (keywordp (car __predictions))
       (send* _predictions __predictions)
     (progn
       (if __predictions (setq _predictions (car __predictions)))
       _predictions)))
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _n_prediction
    4
    ;; object_msgs/Prediction[] _predictions
    (apply #'+ (send-all _predictions :serialization-length)) 4
    ;; float32[] _prob
    (* 4    (length _prob)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _n_prediction
       (write-long _n_prediction s)
     ;; object_msgs/Prediction[] _predictions
     (write-long (length _predictions) s)
     (dolist (elem _predictions)
       (send elem :serialize s)
       )
     ;; float32[] _prob
     (write-long (length _prob) s)
     (dotimes (i (length _prob))
       (sys::poke (elt _prob i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _n_prediction
     (setq _n_prediction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; object_msgs/Prediction[] _predictions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predictions (let (r) (dotimes (i n) (push (instance object_msgs::Prediction :init) r)) r))
     (dolist (elem- _predictions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _prob
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prob (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _prob i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get object_msgs::Predictions :md5sum-) "f8937a5011813d4b881807b890c93552")
(setf (get object_msgs::Predictions :datatype-) "object_msgs/Predictions")
(setf (get object_msgs::Predictions :definition-)
      "int32 id
int32 n_prediction
object_msgs/Prediction[] predictions
float32[] prob

================================================================================
MSG: object_msgs/Prediction
std_msgs/Header header
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



(provide :object_msgs/Predictions "f8937a5011813d4b881807b890c93552")


