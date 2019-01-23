# Install script for directory: /home/dash/contracting/galois/Simbotic/ros/src/airsim_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dash/contracting/galois/Simbotic/ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/installspace/airsim_ros.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros/cmake" TYPE FILE FILES
    "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/installspace/airsim_rosConfig.cmake"
    "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/installspace/airsim_rosConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros" TYPE FILE FILES "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/airsim_ros" TYPE PROGRAM FILES
    "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros/scripts/car_image_raw.py"
    "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros/scripts/car_pose.py"
    "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros/scripts/drone_image_raw.py"
    "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros/scripts/setup_path.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/installspace/airsim_ros.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros/cmake" TYPE FILE FILES
    "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/installspace/airsim_rosConfig.cmake"
    "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros/catkin_generated/installspace/airsim_rosConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros" TYPE FILE FILES "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros/package.xml")
endif()
