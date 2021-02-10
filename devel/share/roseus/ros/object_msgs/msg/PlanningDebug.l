;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::PlanningDebug)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'PlanningDebug (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::PLANNINGDEBUG")
  (make-package "OBJECT_MSGS::PLANNINGDEBUG"))

(in-package "ROS")
;;//! \htmlinclude PlanningDebug.msg.html


(defclass object_msgs::PlanningDebug
  :super ros::object
  :slots (_car2_t0 _car3_t0 _traj_t0 _x0 _y0 _yaw0 _v0 _a0 _planned_trajectories _ego_polygons _costs _best_ind _best_cost _car2_predictions _car3_predictions _car2_polygons _car3_polygons ))

(defmethod object_msgs::PlanningDebug
  (:init
   (&key
    ((:car2_t0 __car2_t0) 0.0)
    ((:car3_t0 __car3_t0) 0.0)
    ((:traj_t0 __traj_t0) 0.0)
    ((:x0 __x0) 0.0)
    ((:y0 __y0) 0.0)
    ((:yaw0 __yaw0) 0.0)
    ((:v0 __v0) 0.0)
    ((:a0 __a0) 0.0)
    ((:planned_trajectories __planned_trajectories) (let (r) (dotimes (i 0) (push (instance object_msgs::Trajectory :init) r)) r))
    ((:ego_polygons __ego_polygons) (let (r) (dotimes (i 0) (push (instance object_msgs::PolygonArray :init) r)) r))
    ((:costs __costs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:best_ind __best_ind) 0)
    ((:best_cost __best_cost) 0.0)
    ((:car2_predictions __car2_predictions) (let (r) (dotimes (i 0) (push (instance object_msgs::DebugPrediction :init) r)) r))
    ((:car3_predictions __car3_predictions) (let (r) (dotimes (i 0) (push (instance object_msgs::DebugPrediction :init) r)) r))
    ((:car2_polygons __car2_polygons) (let (r) (dotimes (i 0) (push (instance object_msgs::Polygon :init) r)) r))
    ((:car3_polygons __car3_polygons) (let (r) (dotimes (i 0) (push (instance object_msgs::Polygon :init) r)) r))
    )
   (send-super :init)
   (setq _car2_t0 (float __car2_t0))
   (setq _car3_t0 (float __car3_t0))
   (setq _traj_t0 (float __traj_t0))
   (setq _x0 (float __x0))
   (setq _y0 (float __y0))
   (setq _yaw0 (float __yaw0))
   (setq _v0 (float __v0))
   (setq _a0 (float __a0))
   (setq _planned_trajectories __planned_trajectories)
   (setq _ego_polygons __ego_polygons)
   (setq _costs __costs)
   (setq _best_ind (round __best_ind))
   (setq _best_cost (float __best_cost))
   (setq _car2_predictions __car2_predictions)
   (setq _car3_predictions __car3_predictions)
   (setq _car2_polygons __car2_polygons)
   (setq _car3_polygons __car3_polygons)
   self)
  (:car2_t0
   (&optional __car2_t0)
   (if __car2_t0 (setq _car2_t0 __car2_t0)) _car2_t0)
  (:car3_t0
   (&optional __car3_t0)
   (if __car3_t0 (setq _car3_t0 __car3_t0)) _car3_t0)
  (:traj_t0
   (&optional __traj_t0)
   (if __traj_t0 (setq _traj_t0 __traj_t0)) _traj_t0)
  (:x0
   (&optional __x0)
   (if __x0 (setq _x0 __x0)) _x0)
  (:y0
   (&optional __y0)
   (if __y0 (setq _y0 __y0)) _y0)
  (:yaw0
   (&optional __yaw0)
   (if __yaw0 (setq _yaw0 __yaw0)) _yaw0)
  (:v0
   (&optional __v0)
   (if __v0 (setq _v0 __v0)) _v0)
  (:a0
   (&optional __a0)
   (if __a0 (setq _a0 __a0)) _a0)
  (:planned_trajectories
   (&rest __planned_trajectories)
   (if (keywordp (car __planned_trajectories))
       (send* _planned_trajectories __planned_trajectories)
     (progn
       (if __planned_trajectories (setq _planned_trajectories (car __planned_trajectories)))
       _planned_trajectories)))
  (:ego_polygons
   (&rest __ego_polygons)
   (if (keywordp (car __ego_polygons))
       (send* _ego_polygons __ego_polygons)
     (progn
       (if __ego_polygons (setq _ego_polygons (car __ego_polygons)))
       _ego_polygons)))
  (:costs
   (&optional __costs)
   (if __costs (setq _costs __costs)) _costs)
  (:best_ind
   (&optional __best_ind)
   (if __best_ind (setq _best_ind __best_ind)) _best_ind)
  (:best_cost
   (&optional __best_cost)
   (if __best_cost (setq _best_cost __best_cost)) _best_cost)
  (:car2_predictions
   (&rest __car2_predictions)
   (if (keywordp (car __car2_predictions))
       (send* _car2_predictions __car2_predictions)
     (progn
       (if __car2_predictions (setq _car2_predictions (car __car2_predictions)))
       _car2_predictions)))
  (:car3_predictions
   (&rest __car3_predictions)
   (if (keywordp (car __car3_predictions))
       (send* _car3_predictions __car3_predictions)
     (progn
       (if __car3_predictions (setq _car3_predictions (car __car3_predictions)))
       _car3_predictions)))
  (:car2_polygons
   (&rest __car2_polygons)
   (if (keywordp (car __car2_polygons))
       (send* _car2_polygons __car2_polygons)
     (progn
       (if __car2_polygons (setq _car2_polygons (car __car2_polygons)))
       _car2_polygons)))
  (:car3_polygons
   (&rest __car3_polygons)
   (if (keywordp (car __car3_polygons))
       (send* _car3_polygons __car3_polygons)
     (progn
       (if __car3_polygons (setq _car3_polygons (car __car3_polygons)))
       _car3_polygons)))
  (:serialization-length
   ()
   (+
    ;; float64 _car2_t0
    8
    ;; float64 _car3_t0
    8
    ;; float64 _traj_t0
    8
    ;; float32 _x0
    4
    ;; float32 _y0
    4
    ;; float32 _yaw0
    4
    ;; float32 _v0
    4
    ;; float32 _a0
    4
    ;; object_msgs/Trajectory[] _planned_trajectories
    (apply #'+ (send-all _planned_trajectories :serialization-length)) 4
    ;; object_msgs/PolygonArray[] _ego_polygons
    (apply #'+ (send-all _ego_polygons :serialization-length)) 4
    ;; float32[] _costs
    (* 4    (length _costs)) 4
    ;; int32 _best_ind
    4
    ;; float32 _best_cost
    4
    ;; object_msgs/DebugPrediction[] _car2_predictions
    (apply #'+ (send-all _car2_predictions :serialization-length)) 4
    ;; object_msgs/DebugPrediction[] _car3_predictions
    (apply #'+ (send-all _car3_predictions :serialization-length)) 4
    ;; object_msgs/Polygon[] _car2_polygons
    (apply #'+ (send-all _car2_polygons :serialization-length)) 4
    ;; object_msgs/Polygon[] _car3_polygons
    (apply #'+ (send-all _car3_polygons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _car2_t0
       (sys::poke _car2_t0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _car3_t0
       (sys::poke _car3_t0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _traj_t0
       (sys::poke _traj_t0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _x0
       (sys::poke _x0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y0
       (sys::poke _y0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw0
       (sys::poke _yaw0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v0
       (sys::poke _v0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a0
       (sys::poke _a0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; object_msgs/Trajectory[] _planned_trajectories
     (write-long (length _planned_trajectories) s)
     (dolist (elem _planned_trajectories)
       (send elem :serialize s)
       )
     ;; object_msgs/PolygonArray[] _ego_polygons
     (write-long (length _ego_polygons) s)
     (dolist (elem _ego_polygons)
       (send elem :serialize s)
       )
     ;; float32[] _costs
     (write-long (length _costs) s)
     (dotimes (i (length _costs))
       (sys::poke (elt _costs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _best_ind
       (write-long _best_ind s)
     ;; float32 _best_cost
       (sys::poke _best_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; object_msgs/DebugPrediction[] _car2_predictions
     (write-long (length _car2_predictions) s)
     (dolist (elem _car2_predictions)
       (send elem :serialize s)
       )
     ;; object_msgs/DebugPrediction[] _car3_predictions
     (write-long (length _car3_predictions) s)
     (dolist (elem _car3_predictions)
       (send elem :serialize s)
       )
     ;; object_msgs/Polygon[] _car2_polygons
     (write-long (length _car2_polygons) s)
     (dolist (elem _car2_polygons)
       (send elem :serialize s)
       )
     ;; object_msgs/Polygon[] _car3_polygons
     (write-long (length _car3_polygons) s)
     (dolist (elem _car3_polygons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _car2_t0
     (setq _car2_t0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _car3_t0
     (setq _car3_t0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _traj_t0
     (setq _traj_t0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _x0
     (setq _x0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y0
     (setq _y0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw0
     (setq _yaw0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v0
     (setq _v0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a0
     (setq _a0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; object_msgs/Trajectory[] _planned_trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planned_trajectories (let (r) (dotimes (i n) (push (instance object_msgs::Trajectory :init) r)) r))
     (dolist (elem- _planned_trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; object_msgs/PolygonArray[] _ego_polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ego_polygons (let (r) (dotimes (i n) (push (instance object_msgs::PolygonArray :init) r)) r))
     (dolist (elem- _ego_polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _costs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _costs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _costs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _best_ind
     (setq _best_ind (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _best_cost
     (setq _best_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; object_msgs/DebugPrediction[] _car2_predictions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _car2_predictions (let (r) (dotimes (i n) (push (instance object_msgs::DebugPrediction :init) r)) r))
     (dolist (elem- _car2_predictions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; object_msgs/DebugPrediction[] _car3_predictions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _car3_predictions (let (r) (dotimes (i n) (push (instance object_msgs::DebugPrediction :init) r)) r))
     (dolist (elem- _car3_predictions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; object_msgs/Polygon[] _car2_polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _car2_polygons (let (r) (dotimes (i n) (push (instance object_msgs::Polygon :init) r)) r))
     (dolist (elem- _car2_polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; object_msgs/Polygon[] _car3_polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _car3_polygons (let (r) (dotimes (i n) (push (instance object_msgs::Polygon :init) r)) r))
     (dolist (elem- _car3_polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_msgs::PlanningDebug :md5sum-) "8ebf1e00ef837b4782bf667f543af084")
(setf (get object_msgs::PlanningDebug :datatype-) "object_msgs/PlanningDebug")
(setf (get object_msgs::PlanningDebug :definition-)
      "# time
float64 car2_t0
float64 car3_t0
float64 traj_t0

# position
float32 x0
float32 y0
float32 yaw0
float32 v0
float32 a0

# planned trajectories
object_msgs/Trajectory[] planned_trajectories
object_msgs/PolygonArray[] ego_polygons
float32[] costs
int32 best_ind
float32 best_cost

# predictions
object_msgs/DebugPrediction[] car2_predictions
object_msgs/DebugPrediction[] car3_predictions
object_msgs/Polygon[] car2_polygons
object_msgs/Polygon[] car3_polygons
================================================================================
MSG: object_msgs/Trajectory
std_msgs/Header header
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

================================================================================
MSG: object_msgs/PolygonArray
object_msgs/Polygon[] polygon_list
================================================================================
MSG: object_msgs/Polygon
int32 n
float32[] x
float32[] y
================================================================================
MSG: object_msgs/DebugPrediction
# prediction msg
float32[] x
float32[] y
float32[] yaw

float32[] sigx
float32[] sigy
float32[] rho
")



(provide :object_msgs/PlanningDebug "8ebf1e00ef837b4782bf667f543af084")


