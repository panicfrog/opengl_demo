//
//  Utils.hpp
//  opengl_demo1
//
//  Created by Ye Yongping on 2021/7/24.
//

#ifndef Utils_hpp
#define Utils_hpp

#include <stdio.h>
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <fstream>

namespace Utils {

    bool checkOpenGLError();
    void printProgramLog(int prog);
    void printShaderLog(GLuint shader);
    GLuint createShaderProgram(const char *vp, const char *fp);

}

#endif /* Utils_hpp */
