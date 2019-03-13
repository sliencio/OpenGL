cmake_minimum_required(VERSION 3.13)
project(VertexTest)

set(CMAKE_CXX_STANDARD 14)

# 添加头文件
set(GLEW_H /usr/local/Cellar/glew/2.1.0/include/GL)
set(GLFW_H /usr/local/Cellar/glfw/3.2.1/include/GLFW)
set(GLAD_H /usr/local/include/glad)
set(KH_H /usr/local/include/KHR)
include_directories(${GLEW_H} ${GLFW_H} ${GLAD_H} ${KH_H})

# 添加目标链接
set(GLEW_LINK /usr/local/Cellar/glew/2.1.0/lib/libGLEW.2.1.dylib)
set(GLFW_LINK /usr/local/Cellar/glfw/3.2.1/lib/libglfw.3.dylib)
link_libraries(${OPENGL} ${GLEW_LINK} ${GLFW_LINK})



#add_executable(VertexTest main.cpp)

set(SOURCE_FILES "glad.c" "main.cpp")
add_executable(VertexTest ${SOURCE_FILES})
if (APPLE)
    target_link_libraries(VertexTest "-framework OpenGL")
    target_link_libraries(VertexTest "-framework GLUT")
endif()