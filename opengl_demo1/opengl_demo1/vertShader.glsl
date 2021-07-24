#version 410


// 平移矩阵
mat4 buildTranslate(float x, float y, float z)
{
    mat4 trans = mat4(1.0, 0.0, 0.0, 0.0,
                      0.0, 1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0,
                      x,   y,   z,   1.0);
    return trans;
}

// x轴旋转矩阵
mat4 buildRotateX(float rad)
{
    mat4 xrot = mat4(1.0, 0.0, 0.0, 0.0,
                     0.0, cos(rad), -sin(rad), 0.0,
                     0.0, sin(rad),  cos(rad), 0.0,
                              0.0, 0.0, 0.0, 1.0);
   return xrot;
}

// 围绕Y轴旋转矩阵
mat4 buildRotateY(float rad)
{
   mat4 yrot = mat4(cos(rad), 0.0, sin(rad), 0.0,
                    0.0, 1.0, 0.0, 0.0,
                    -sin(rad), 0.0, cos(rad), 0.0,
                    0.0, 0.0, 0.0, 1.0);
  return yrot;
}

// 围绕Z轴旋转矩阵
mat4 buildRotateZ(float rad)
{
    mat4 zrot = mat4(cos(rad), -sin(rad), 0.0, 0.0,
                     sin(rad),  cos(rad), 0.0, 0.0,
                     0.0, 0.0, 1.0, 0.0,
                     0.0, 0.0, 0.0, 1.0);
    return zrot;
}
                     
// 缩放矩阵
mat4 buildScale(float x, float y, float z)
{
    mat4 scale = mat4(x,   0.0, 0.0, 0.0,
                      0.0, y,   0.0, 0.0,
                      0.0, 0.0, z,   0.0,
                      0.0, 0.0, 0.0, 1.0);
    return scale;
}

uniform float offset;
void main(void)
{
    if (gl_VertexID == 0) gl_Position = vec4(0.25 + offset, -0.25, 0.0, 1.0);
    else if (gl_VertexID == 1) gl_Position = vec4(-0.25 + offset, -0.25, 0.0, 1.0);
    else gl_Position = vec4(0.25 + offset, 0.25, 0.0, 1.0);
}
