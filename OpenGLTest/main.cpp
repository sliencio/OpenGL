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
    //针对mac
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT,GL_TRUE);

    //添加一个窗口

    GLFWwindow * window = glfwCreateWindow(800,600,"OpenGLTest",NULL,NULL);
    if(window == NULL){
        std::cout<<"Failed to create GLFW window"<<std::endl;
        glfwTerminate();
        return -1;
    }

    //将窗口的上下文环境设置成当前主线程的上下文
    glfwMakeContextCurrent(window);
//    GLAD是用来管理OpenGL的函数指针的，所以在调用任何OpenGL的函数之前我们需要初始化GLAD
    if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)){
        std::cout<<"Failed to initialize GLAD"<<std::endl;
        return -1;
    }
    //x,y,width,height
    glViewport(0,0,300,300);

    void framebuffer_size_callback(GLFWwindow* window, int width, int height);
    void ProcessInput(GLFWwindow* window);
    glfwSetFramebufferSizeCallback(window,framebuffer_size_callback);

    //render loop
    //函数在我们每次循环的开始前检查一次GLFW是否被要求退出，如果是，关闭应用程序
    while (!glfwWindowShouldClose(window)){
        //处理输入
        ProcessInput(window);
        glClearColor(0,0.5F,0.5F,1);
//        缓冲位(Buffer Bit)来指定要清空的缓冲，可能的缓冲位有GL_COLOR_BUFFER_BIT，GL_DEPTH_BUFFER_BIT和GL_STENCIL_BUFFER_BIT
        glClear(GL_COLOR_BUFFER_BIT);

        //---- 渲染 ---
        //函数会交换颜色缓冲（它是一个储存着GLFW窗口每一个像素颜色值的大缓冲），它在这一迭代中被用来绘制，并且将会作为输出显示在屏幕上
        glfwSwapBuffers(window);
        //函数检查有没有触发什么事件（比如键盘输入、鼠标移动等）、更新窗口状态，并调用对应的回调函数（可以通过回调方法手动设置）。
        glfwPollEvents();
    }
//    当渲染循环结束后我们需要正确释放/删除之前的分配的所有资源
    glfwTerminate();
    return 0;
}
/***
 * 当用户改变窗口大小的时候，视口也应该被调整，给窗口注册回调，窗口改变时调用该函数
 * @param window
 * @param width
 * @param height
 */
void framebuffer_size_callback(GLFWwindow *window,int width,int height){
    glViewport(0,0,width,height);
}

/***
 * 处理输入
 * @param window
 */
void ProcessInput(GLFWwindow *window){
    if(glfwGetKey(window,GLFW_KEY_ESCAPE) == GLFW_PRESS){
        //关闭
        glfwSetWindowShouldClose(window,true);
    }
}



