;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::DebugPrediction)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'DebugPrediction (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::DEBUGPREDICTION")
  (make-package "OBJECT_MSGS::DEBUGPREDICTION"))

(in-package "ROS")
;;//! \htmlinclude DebugPrediction.msg.html


(defclass object_msgs::DebugPrediction
  :super ros::object
  :slots (_x _y _yaw _sigx _sigy _rho ))

(defmethod object_msgs::DebugPrediction
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yaw __yaw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sigx __sigx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sigy __sigy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rho __rho) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _yaw __yaw)
   (setq _sigx __sigx)
   (setq _sigy __sigy)
   (setq _rho __rho)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:sigx
   (&optional __sigx)
   (if __sigx (setq _sigx __sigx)) _sigx)
  (:sigy
   (&optional __sigy)
   (if __sigy (setq _sigy __sigy)) _sigy)
  (:rho
   (&optional __rho)
   (if __rho (setq _rho __rho)) _rho)
  (:serialization-length
   ()
   (+
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _yaw
    (* 4    (length _yaw)) 4
    ;; float32[] _sigx
    (* 4    (length _sigx)) 4
    ;; float32[] _sigy
    (* 4    (length _sigy)) 4
    ;; float32[] _rho
    (* 4    (length _rho)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;;
   self)
  )

(setf (get object_msgs::DebugPrediction :md5sum-) "06e409df60e4d834580496938433d0da")
(setf (get object_msgs::DebugPrediction :datatype-) "object_msgs/DebugPrediction")
(setf (get object_msgs::DebugPrediction :definition-)
      "# prediction msg
float32[] x
float32[] y
float32[] yaw

float32[] sigx
float32[] sigy
float32[] rho
")



(provide :object_msgs/DebugPrediction "06e409df60e4d834580496938433d0da")


