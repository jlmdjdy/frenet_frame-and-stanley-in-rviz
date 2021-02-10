; Auto-generated. Do not edit!


(cl:in-package object_msgs-msg)


;//! \htmlinclude PolygonArray.msg.html

(cl:defclass <PolygonArray> (roslisp-msg-protocol:ros-message)
  ((polygon_list
    :reader polygon_list
    :initarg :polygon_list
    :type (cl:vector object_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'object_msgs-msg:Polygon :initial-element (cl:make-instance 'object_msgs-msg:Polygon))))
)

(cl:defclass PolygonArray (<PolygonArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolygonArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolygonArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_msgs-msg:<PolygonArray> is deprecated: use object_msgs-msg:PolygonArray instead.")))

(cl:ensure-generic-function 'polygon_list-val :lambda-list '(m))
(cl:defmethod polygon_list-val ((m <PolygonArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_msgs-msg:polygon_list-val is deprecated.  Use object_msgs-msg:polygon_list instead.")
  (polygon_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolygonArray>) ostream)
  "Serializes a message object of type '<PolygonArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolygonArray>) istream)
  "Deserializes a message object of type '<PolygonArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolygonArray>)))
  "Returns string type for a message object of type '<PolygonArray>"
  "object_msgs/PolygonArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolygonArray)))
  "Returns string type for a message object of type 'PolygonArray"
  "object_msgs/PolygonArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolygonArray>)))
  "Returns md5sum for a message object of type '<PolygonArray>"
  "8cca23aedf7880d762e94679f98a6bf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolygonArray)))
  "Returns md5sum for a message object of type 'PolygonArray"
  "8cca23aedf7880d762e94679f98a6bf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolygonArray>)))
  "Returns full string definition for message of type '<PolygonArray>"
  (cl:format cl:nil "object_msgs/Polygon[] polygon_list~%================================================================================~%MSG: object_msgs/Polygon~%int32 n~%float32[] x~%float32[] y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolygonArray)))
  "Returns full string definition for message of type 'PolygonArray"
  (cl:format cl:nil "object_msgs/Polygon[] polygon_list~%================================================================================~%MSG: object_msgs/Polygon~%int32 n~%float32[] x~%float32[] y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolygonArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolygonArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PolygonArray
    (cl:cons ':polygon_list (polygon_list msg))
))
