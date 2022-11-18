# ZKLBS

环境配置：
  linux ubuntu 22.04
  
依赖项：
  gcc/g++ 11
  cmake
  grpc
  json
  
项目运行:
  cd ZKLBS/src/grpc
  mkdir build
  cmake ..
  make
  三个终端分别运行：./greeterVerifier ./greeterServer ./greeterClient
