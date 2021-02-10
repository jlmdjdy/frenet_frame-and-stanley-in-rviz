;; Auto-generated. Do not edit!


(when (boundp 'object_msgs::PolygonArray)
  (if (not (find-package "OBJECT_MSGS"))
    (make-package "OBJECT_MSGS"))
  (shadow 'PolygonArray (find-package "OBJECT_MSGS")))
(unless (find-package "OBJECT_MSGS::POLYGONARRAY")
  (make-package "OBJECT_MSGS::POLYGONARRAY"))

(in-package "ROS")
;;//! \htmlinclude PolygonArray.msg.html


(defclass object_msgs::PolygonArray
  :super ros::object
  :slots (_polygon_list ))

(defmethod object_msgs::PolygonArray
  (:init
   (&key
    ((:polygon_list __polygon_list) (let (r) (dotimes (i 0) (push (instance object_msgs::Polygon :init) r)) r))
    )
   (send-super :init)
   (setq _polygon_list __polygon_list)
   self)
  (:polygon_list
   (&rest __polygon_list)
   (if (keywordp (car __polygon_list))
       (send* _polygon_list __polygon_list)
     (progn
       (if __polygon_list (setq _polygon_list (car __polygon_list)))
       _polygon_list)))
  (:serialization-length
   ()
   (+
    ;; object_msgs/Polygon[] _polygon_list
    (apply #'+ (send-all _polygon_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; object_msgs/Polygon[] _polygon_list
     (write-long (length _polygon_list) s)
     (dolist (elem _polygon_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; object_msgs/Polygon[] _polygon_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_list (let (r) (dotimes (i n) (push (instance object_msgs::Polygon :init) r)) r))
     (dolist (elem- _polygon_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_msgs::PolygonArray :md5sum-) "8cca23aedf7880d762e94679f98a6bf6")
(setf (get object_msgs::PolygonArray :datatype-) "object_msgs/PolygonArray")
(setf (get object_msgs::PolygonArray :definition-)
      "object_msgs/Polygon[] polygon_list
================================================================================
MSG: object_msgs/Polygon
int32 n
float32[] x
float32[] y
")



(provide :object_msgs/PolygonArray "8cca23aedf7880d762e94679f98a6bf6")


