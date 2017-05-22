# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kylinbot_core: 6 messages, 0 services")

set(MSG_I_FLAGS "-Ikylinbot_core:/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kylinbot_core_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg" NAME_WE)
add_custom_target(_kylinbot_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kylinbot_core" "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg" ""
)

get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg" NAME_WE)
add_custom_target(_kylinbot_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kylinbot_core" "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg" ""
)

get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg" NAME_WE)
add_custom_target(_kylinbot_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kylinbot_core" "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg" ""
)

get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg" NAME_WE)
add_custom_target(_kylinbot_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kylinbot_core" "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg" ""
)

get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg" NAME_WE)
add_custom_target(_kylinbot_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kylinbot_core" "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg" "kylinbot_core/CBUS"
)

get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg" NAME_WE)
add_custom_target(_kylinbot_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kylinbot_core" "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_cpp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_cpp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_cpp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_cpp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg"
  "${MSG_I_FLAGS}"
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_cpp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
)

### Generating Services

### Generating Module File
_generate_module_cpp(kylinbot_core
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kylinbot_core_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kylinbot_core_generate_messages kylinbot_core_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_cpp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_cpp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_cpp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_cpp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_cpp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_cpp _kylinbot_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kylinbot_core_gencpp)
add_dependencies(kylinbot_core_gencpp kylinbot_core_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kylinbot_core_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_lisp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_lisp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_lisp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_lisp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg"
  "${MSG_I_FLAGS}"
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
)
_generate_msg_lisp(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
)

### Generating Services

### Generating Module File
_generate_module_lisp(kylinbot_core
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kylinbot_core_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kylinbot_core_generate_messages kylinbot_core_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_lisp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_lisp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_lisp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_lisp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_lisp _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_lisp _kylinbot_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kylinbot_core_genlisp)
add_dependencies(kylinbot_core_genlisp kylinbot_core_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kylinbot_core_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
)
_generate_msg_py(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
)
_generate_msg_py(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
)
_generate_msg_py(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
)
_generate_msg_py(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg"
  "${MSG_I_FLAGS}"
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
)
_generate_msg_py(kylinbot_core
  "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
)

### Generating Services

### Generating Module File
_generate_module_py(kylinbot_core
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kylinbot_core_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kylinbot_core_generate_messages kylinbot_core_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/PosCalib.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_py _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Sonar.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_py _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/CBUS.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_py _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_py _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/Kylin.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_py _kylinbot_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg/ZGyro.msg" NAME_WE)
add_dependencies(kylinbot_core_generate_messages_py _kylinbot_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kylinbot_core_genpy)
add_dependencies(kylinbot_core_genpy kylinbot_core_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kylinbot_core_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kylinbot_core
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(kylinbot_core_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kylinbot_core
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(kylinbot_core_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kylinbot_core
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(kylinbot_core_generate_messages_py std_msgs_generate_messages_py)
