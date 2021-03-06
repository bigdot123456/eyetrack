# This project requires OpenCV and libfreenect
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
set(LIBS ${LIBS} ${OpenCV_LIBRARIES})

# This project includes a custom macro to find libfreenect
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules")
find_package(Freenect REQUIRED)
include_directories(${Freenect_INCLUDE_DIRS})
set(LIBS ${LIBS} ${Freenect_LIBRARIES})

# Finds location of opengl libs
#FIND_PACKAGE( OpenGL )
#FIND_PACKAGE( GLU )
#FIND_PACKAGE( GLUT )

# Define the global include path
include_directories("${PROJECT_SOURCE_DIR}/include")

# Include the source code for FaceTracker, libsvm and the head pose estimator
add_subdirectory(ft_lib)
add_subdirectory(libsvm)
add_subdirectory(kinect_util)
add_subdirectory(head_pose)
add_subdirectory(socket)

set(eye_gaze_sources main.cpp)

# Link the required libraries (OpenCV, freenect, face_tracker and libsvm) to the exectuable
add_executable(eye_gaze ${eye_gaze_sources})
#target_link_libraries(eye_gaze ${LIBS} face_tracker libsvm ${OpenGL_LIBRARY} ${GLUT_LIBRARY} kinect_util socket head_pose)
target_link_libraries(eye_gaze ${LIBS} face_tracker libsvm kinect_util socket head_pose)

