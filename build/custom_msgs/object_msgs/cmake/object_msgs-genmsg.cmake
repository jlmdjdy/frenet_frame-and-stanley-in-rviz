# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Iobject_msgs:/home/jdy/project_ws/src/custom_msgs/object_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg" "object_msgs/Polygon:object_msgs/Trajectory:object_msgs/DebugPrediction:std_msgs/Header:object_msgs/PolygonArray"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg" "object_msgs/Polygon"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg" "object_msgs/Object:std_msgs/Header"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg" ""
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg" "object_msgs/Prediction:std_msgs/Header:object_msgs/Object"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg" "object_msgs/Object:std_msgs/Header"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg" "object_msgs/trajectory:std_msgs/Header:object_msgs/Object"
)

get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg" NAME_WE)
add_custom_target(_object_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_msgs" "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)
_generate_msg_cpp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(object_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_msgs_generate_messages object_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_cpp _object_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_msgs_gencpp)
add_dependencies(object_msgs_gencpp object_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)
_generate_msg_eus(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(object_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(object_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(object_msgs_generate_messages object_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_eus _object_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_msgs_geneus)
add_dependencies(object_msgs_geneus object_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)
_generate_msg_lisp(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(object_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_msgs_generate_messages object_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_lisp _object_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_msgs_genlisp)
add_dependencies(object_msgs_genlisp object_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)
_generate_msg_nodejs(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(object_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(object_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(object_msgs_generate_messages object_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_nodejs _object_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_msgs_gennodejs)
add_dependencies(object_msgs_gennodejs object_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg"
  "${MSG_I_FLAGS}"
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)
_generate_msg_py(object_msgs
  "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(object_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_msgs_generate_messages object_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PlanningDebug.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/PolygonArray.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Control.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Prediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Object.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/Predictions.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/trajectory_array.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jdy/project_ws/src/custom_msgs/object_msgs/msg/DebugPrediction.msg" NAME_WE)
add_dependencies(object_msgs_generate_messages_py _object_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_msgs_genpy)
add_dependencies(object_msgs_genpy object_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(object_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(object_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(object_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(object_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(object_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(object_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(object_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(object_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(object_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(object_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
