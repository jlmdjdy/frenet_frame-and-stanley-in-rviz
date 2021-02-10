; Auto-generated. Do not edit!


(cl:in-package object_msgs-msg)


;//! \htmlinclude PlanningDebug.msg.html

(cl:defclass <PlanningDebug> (roslisp-msg-protocol:ros-message)
  ((car2_t0
    :reader car2_t0
    :initarg :car2_t0
    :type cl:float
    :initform 0.0)
   (car3_t0
    :reader car3_t0
    :initarg :car3_t0
    :type cl:float
    :initform 0.0)
   (traj_t0
    :reader traj_t0
    :initarg :traj_t0
    :type cl:float
    :initform 0.0)
   (x0
    :reader x0
    :initarg :x0
    :type cl:float
    :initform 0.0)
   (y0
    :reader y0
    :initarg :y0
    :type cl:float
    :initform 0.0)
   (yaw0
    :reader yaw0
    :initarg :yaw0
    :type cl:float
    :initform 0.0)
   (v0
    :reader v0
    :initarg :v0
    :type cl:float
    :initform 0.0)
   (a0
    :reader a0
    :initarg :a0
    :type cl:float
    :initform 0.0)
   (planned_trajectories
    :reader planned_trajectories
    :initarg :planned_trajectories
    :type (cl:vector object_msgs-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:Trajectory :initial-element (cl:make-instance 'object_msgs-msg:Trajectory)))
   (ego_polygons
    :reader ego_polygons
    :initarg :ego_polygons
    :type (cl:vector object_msgs-msg:PolygonArray)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:PolygonArray :initial-element (cl:make-instance 'object_msgs-msg:PolygonArray)))
   (costs
    :reader costs
    :initarg :costs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (best_ind
    :reader best_ind
    :initarg :best_ind
    :type cl:integer
    :initform 0)
   (best_cost
    :reader best_cost
    :initarg :best_cost
    :type cl:float
    :initform 0.0)
   (car2_predictions
    :reader car2_predictions
    :initarg :car2_predictions
    :type (cl:vector object_msgs-msg:DebugPrediction)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:DebugPrediction :initial-element (cl:make-instance 'object_msgs-msg:DebugPrediction)))
   (car3_predictions
    :reader car3_predictions
    :initarg :car3_predictions
    :type (cl:vector object_msgs-msg:DebugPrediction)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:DebugPrediction :initial-element (cl:make-instance 'object_msgs-msg:DebugPrediction)))
   (car2_polygons
    :reader car2_polygons
    :initarg :car2_polygons
    :type (cl:vector object_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:Polygon :initial-element (cl:make-instance 'object_msgs-msg:Polygon)))
   (car3_polygons
    :reader car3_polygons
    :initarg :car3_polygons
    :type (cl:vector object_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:Polygon :initial-element (cl:make-instance 'object_msgs-msg:Polygon))))
)

(cl:defclass PlanningDebug (<PlanningDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_msgs-msg:<PlanningDebug> is deprecated: use object_msgs-msg:PlanningDebug instead.")))

(cl:ensure-generic-function 'car2_t0-val :lambda-list '(m))
(cl:defmethod car2_t0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:car2_t0-val is deprecated.  Use object_msgs-msg:car2_t0 instead.")
  (car2_t0 m))

(cl:ensure-generic-function 'car3_t0-val :lambda-list '(m))
(cl:defmethod car3_t0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:car3_t0-val is deprecated.  Use object_msgs-msg:car3_t0 instead.")
  (car3_t0 m))

(cl:ensure-generic-function 'traj_t0-val :lambda-list '(m))
(cl:defmethod traj_t0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:traj_t0-val is deprecated.  Use object_msgs-msg:traj_t0 instead.")
  (traj_t0 m))

(cl:ensure-generic-function 'x0-val :lambda-list '(m))
(cl:defmethod x0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:x0-val is deprecated.  Use object_msgs-msg:x0 instead.")
  (x0 m))

(cl:ensure-generic-function 'y0-val :lambda-list '(m))
(cl:defmethod y0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:y0-val is deprecated.  Use object_msgs-msg:y0 instead.")
  (y0 m))

(cl:ensure-generic-function 'yaw0-val :lambda-list '(m))
(cl:defmethod yaw0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:yaw0-val is deprecated.  Use object_msgs-msg:yaw0 instead.")
  (yaw0 m))

(cl:ensure-generic-function 'v0-val :lambda-list '(m))
(cl:defmethod v0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:v0-val is deprecated.  Use object_msgs-msg:v0 instead.")
  (v0 m))

(cl:ensure-generic-function 'a0-val :lambda-list '(m))
(cl:defmethod a0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:a0-val is deprecated.  Use object_msgs-msg:a0 instead.")
  (a0 m))

(cl:ensure-generic-function 'planned_trajectories-val :lambda-list '(m))
(cl:defmethod planned_trajectories-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:planned_trajectories-val is deprecated.  Use object_msgs-msg:planned_trajectories instead.")
  (planned_trajectories m))

(cl:ensure-generic-function 'ego_polygons-val :lambda-list '(m))
(cl:defmethod ego_polygons-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:ego_polygons-val is deprecated.  Use object_msgs-msg:ego_polygons instead.")
  (ego_polygons m))

(cl:ensure-generic-function 'costs-val :lambda-list '(m))
(cl:defmethod costs-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:costs-val is deprecated.  Use object_msgs-msg:costs instead.")
  (costs m))

(cl:ensure-generic-function 'best_ind-val :lambda-list '(m))
(cl:defmethod best_ind-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:best_ind-val is deprecated.  Use object_msgs-msg:best_ind instead.")
  (best_ind m))

(cl:ensure-generic-function 'best_cost-val :lambda-list '(m))
(cl:defmethod best_cost-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:best_cost-val is deprecated.  Use object_msgs-msg:best_cost instead.")
  (best_cost m))

(cl:ensure-generic-function 'car2_predictions-val :lambda-list '(m))
(cl:defmethod car2_predictions-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:car2_predictions-val is deprecated.  Use object_msgs-msg:car2_predictions instead.")
  (car2_predictions m))

(cl:ensure-generic-function 'car3_predictions-val :lambda-list '(m))
(cl:defmethod car3_predictions-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:car3_predictions-val is deprecated.  Use object_msgs-msg:car3_predictions instead.")
  (car3_predictions m))

(cl:ensure-generic-function 'car2_polygons-val :lambda-list '(m))
(cl:defmethod car2_polygons-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:car2_polygons-val is deprecated.  Use object_msgs-msg:car2_polygons instead.")
  (car2_polygons m))

(cl:ensure-generic-function 'car3_polygons-val :lambda-list '(m))
(cl:defmethod car3_polygons-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:car3_polygons-val is deprecated.  Use object_msgs-msg:car3_polygons instead.")
  (car3_polygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningDebug>) ostream)
  "Serializes a message object of type '<PlanningDebug>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'car2_t0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'car3_t0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'traj_t0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'planned_trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'planned_trajectories))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ego_polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ego_polygons))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'costs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'costs))
  (cl:let* ((signed (cl:slot-value msg 'best_ind)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'best_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'car2_predictions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'car2_predictions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'car3_predictions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'car3_predictions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'car2_polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'car2_polygons))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'car3_polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'car3_polygons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningDebug>) istream)
  "Deserializes a message object of type '<PlanningDebug>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'car2_t0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'car3_t0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traj_t0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a0) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'planned_trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'planned_trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ego_polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ego_polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:PolygonArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'costs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'costs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'best_ind) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'best_cost) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'car2_predictions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'car2_predictions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:DebugPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'car3_predictions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'car3_predictions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:DebugPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'car2_polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'car2_polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'car3_polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'car3_polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningDebug>)))
  "Returns string type for a message object of type '<PlanningDebug>"
  "object_msgs/PlanningDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningDebug)))
  "Returns string type for a message object of type 'PlanningDebug"
  "object_msgs/PlanningDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningDebug>)))
  "Returns md5sum for a message object of type '<PlanningDebug>"
  "8ebf1e00ef837b4782bf667f543af084")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningDebug)))
  "Returns md5sum for a message object of type 'PlanningDebug"
  "8ebf1e00ef837b4782bf667f543af084")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningDebug>)))
  "Returns full string definition for message of type '<PlanningDebug>"
  (cl:format cl:nil "# time~%float64 car2_t0~%float64 car3_t0~%float64 traj_t0~%~%# position~%float32 x0~%float32 y0~%float32 yaw0~%float32 v0~%float32 a0~%~%# planned trajectories~%object_msgs/Trajectory[] planned_trajectories~%object_msgs/PolygonArray[] ego_polygons~%float32[] costs~%int32 best_ind~%float32 best_cost~%~%# predictions~%object_msgs/DebugPrediction[] car2_predictions~%object_msgs/DebugPrediction[] car3_predictions~%object_msgs/Polygon[] car2_polygons~%object_msgs/Polygon[] car3_polygons~%================================================================================~%MSG: object_msgs/Trajectory~%std_msgs/Header header~%int32 n~%float32 dt~%float32[] x~%float32[] y~%float32[] yaw~%float32[] kappa~%float32[] a~%float32[] v~%time t0  # time corresponding x[0]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/PolygonArray~%object_msgs/Polygon[] polygon_list~%================================================================================~%MSG: object_msgs/Polygon~%int32 n~%float32[] x~%float32[] y~%================================================================================~%MSG: object_msgs/DebugPrediction~%# prediction msg~%float32[] x~%float32[] y~%float32[] yaw~%~%float32[] sigx~%float32[] sigy~%float32[] rho~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningDebug)))
  "Returns full string definition for message of type 'PlanningDebug"
  (cl:format cl:nil "# time~%float64 car2_t0~%float64 car3_t0~%float64 traj_t0~%~%# position~%float32 x0~%float32 y0~%float32 yaw0~%float32 v0~%float32 a0~%~%# planned trajectories~%object_msgs/Trajectory[] planned_trajectories~%object_msgs/PolygonArray[] ego_polygons~%float32[] costs~%int32 best_ind~%float32 best_cost~%~%# predictions~%object_msgs/DebugPrediction[] car2_predictions~%object_msgs/DebugPrediction[] car3_predictions~%object_msgs/Polygon[] car2_polygons~%object_msgs/Polygon[] car3_polygons~%================================================================================~%MSG: object_msgs/Trajectory~%std_msgs/Header header~%int32 n~%float32 dt~%float32[] x~%float32[] y~%float32[] yaw~%float32[] kappa~%float32[] a~%float32[] v~%time t0  # time corresponding x[0]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_msgs/PolygonArray~%object_msgs/Polygon[] polygon_list~%================================================================================~%MSG: object_msgs/Polygon~%int32 n~%float32[] x~%float32[] y~%================================================================================~%MSG: object_msgs/DebugPrediction~%# prediction msg~%float32[] x~%float32[] y~%float32[] yaw~%~%float32[] sigx~%float32[] sigy~%float32[] rho~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningDebug>))
  (cl:+ 0
     8
     8
     8
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'planned_trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ego_polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'costs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'car2_predictions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'car3_predictions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'car2_polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'car3_polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningDebug
    (cl:cons ':car2_t0 (car2_t0 msg))
    (cl:cons ':car3_t0 (car3_t0 msg))
    (cl:cons ':traj_t0 (traj_t0 msg))
    (cl:cons ':x0 (x0 msg))
    (cl:cons ':y0 (y0 msg))
    (cl:cons ':yaw0 (yaw0 msg))
    (cl:cons ':v0 (v0 msg))
    (cl:cons ':a0 (a0 msg))
    (cl:cons ':planned_trajectories (planned_trajectories msg))
    (cl:cons ':ego_polygons (ego_polygons msg))
    (cl:cons ':costs (costs msg))
    (cl:cons ':best_ind (best_ind msg))
    (cl:cons ':best_cost (best_cost msg))
    (cl:cons ':car2_predictions (car2_predictions msg))
    (cl:cons ':car3_predictions (car3_predictions msg))
    (cl:cons ':car2_polygons (car2_polygons msg))
    (cl:cons ':car3_polygons (car3_polygons msg))
))
