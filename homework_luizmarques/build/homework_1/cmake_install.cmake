# Install script for directory: /home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/src/homework_1

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/build/homework_1/catkin_generated/installspace/homework_1.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_1/cmake" TYPE FILE FILES
    "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/build/homework_1/catkin_generated/installspace/homework_1Config.cmake"
    "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/build/homework_1/catkin_generated/installspace/homework_1Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_1" TYPE FILE FILES "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/src/homework_1/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_1" TYPE PROGRAM FILES "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/build/homework_1/catkin_generated/installspace/node_A.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_1" TYPE PROGRAM FILES "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/build/homework_1/catkin_generated/installspace/node_B.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_1" TYPE PROGRAM FILES "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/build/homework_1/catkin_generated/installspace/node_C.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_1" TYPE PROGRAM FILES "/home/luiz/ENSTA/ROB311/ROB311-Homeworks/homework_luizmarques/build/homework_1/catkin_generated/installspace/node_D.py")
endif()
