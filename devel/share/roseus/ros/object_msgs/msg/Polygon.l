;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::Polygon)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'Polygon (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::POLYGON")
  (make-package "OBJECT_MSGS::POLYGON"))

(in-package "ROS")
;;//! \htmlinclude Polygon.msg.html


(defclass object_msgs::Polygon
  :super ros::object
  :slots (_n _x _y ))

(defmethod object_msgs::Polygon
  (:init
   (&key
    ((:n __n) 0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _n (round __n))
   (setq _x __x)
   (setq _y __y)
   self)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _n
    4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _n
       (write-long _n s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _n
     (setq _n (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;;
   self)
  )

(setf (get object_msgs::Polygon :md5sum-) "eaab870b6550ee7b74a15d884df1e992")
(setf (get object_msgs::Polygon :datatype-) "object_msgs/Polygon")
(setf (get object_msgs::Polygon :definition-)
      "int32 n
float32[] x
float32[] y
")



(provide :object_msgs/Polygon "eaab870b6550ee7b74a15d884df1e992")


