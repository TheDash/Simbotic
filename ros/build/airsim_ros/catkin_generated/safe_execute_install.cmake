execute_process(COMMAND "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
