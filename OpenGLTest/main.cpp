#include <glad.h>
#include <glfw3.h>
#include <iostream>
using namespace std;

int main(int argc, char **argv){

    glfwInit();
    //使用glfwWindowHint函数来配置GLFW
    //设置主版本
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
    //设置次版本
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
    //设置核心模式
    glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);

    return 0;
}


