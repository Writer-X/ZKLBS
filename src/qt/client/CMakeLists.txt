cmake_minimum_required(VERSION 3.5)

project(ZKLBS LANGUAGES CXX)

set(CMAKE_PREFIX_PATH "/home/xt/Qt5.14.2/5.14.2/gcc_64")

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# QtCreator supports the following variables for Android, which are identical to qmake Android variables.
# Check http://doc.qt.io/qt-5/deployment-android.html for more information.
# They need to be set before the find_package(Qt5 ...) call.

#if(ANDROID)
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
#    if (ANDROID_ABI STREQUAL "armeabi-v7a")
#        set(ANDROID_EXTRA_LIBS
#            ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libcrypto.so
#            ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libssl.so)
#    endif()
#endif()



find_package(Qt5 COMPONENTS Widgets REQUIRED)

if(ANDROID)
  add_library(ZKLBS SHARED
    main.cpp
    mainwindow.cpp
    mainwindow.h
    mainwindow.ui
    client.cpp
    client.h
    backwindow.cpp
    backwindow.h
    backwindow.ui
  )
else()
  add_executable(ZKLBS
    main.cpp
    mainwindow.cpp
    mainwindow.h
    mainwindow.ui
    client.cpp
    client.h
    backwindow.cpp
    backwindow.h
    backwindow.ui
  )
endif()

add_subdirectory(../../grpc ../../.build/grpc EXCLUDE_FROM_ALL)
include_directories(../../grpc/build)

target_link_libraries(ZKLBS 
  Qt5::Widgets
  greeterClient
  TimeUtil
  CoordinateUtil
)