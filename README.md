##auto install caffe on ubuntu
###普通依赖项和cpu-only caffe:
* 使用`sudo auto.sh`来安装caffe需要的c++库以及python包.
* `auto.sh`会在home目录下载caffe源代码并编译cpu-only版caffe
* 如果需要使用gpu,请安装cuda

###安装cuda和gpu-caffe
* 根据你的系统版本[下载](https://developer.nvidia.com/cuda-downloads)cuda离线安装包.
* 使用`sudo cuda.sh xxx.deb`安装cuda, `xxx.deb`为第一步下载的安装包文件.
* 进入`caffe`目录将`Makefile.config`文件中的`CPU_ONLY := 1`注释掉.
* 使用`make`命令重新编译caffe.

___

欢迎bug report: zeakey@outlook.com
