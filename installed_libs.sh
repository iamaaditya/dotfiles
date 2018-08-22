#CUDA Path
export CUDA_HOME=/usr/local/cuda
export CUDA_ROOT=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CUDA_HOME}/lib64
export PATH=$PATH:${CUDA_HOME}/bin
export PYTHON_INCLUDE_DIRS=$PYTHON_INCLUDE_DIRS:/usr/include/python2.7 
export PYTHON_LIBRARY=$PYTHON_LIBRARY:/usr/lib/python2.7/config/libpython2.7.so
export PYTHON_LIBRARIES=$PYTHON_LIBRARIES:/usr/lib/python2.7/config/libpython2.7.so

#CUDNN
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/cuda_cudnn7.0

#bazel (from google)
export PATH=$PATH:~/bazel/output

export LIBRARY_DIRS=$LIBRARY_DIRS:/home/ap/anaconda2/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/anaconda2/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/torch/install/include/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/

#OpenCV
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
#Pythonpath
# export PYTHONPATH=/home/ap/caffe/python:/home/ap/caffe/python/caffe:$PYTHONPATH
export PYTHONPATH=/home/ap/caffe/python:$PYTHONPATH

export OMP_NUM_THREADS=`nproc`
# export PYTHONPATH="$PYTHONPATH:~/deepy/"
export PYTHONPATH="$PYTHONPATH:/home/ap/image_compression/vmaf/python"
export PYTHONPATH="$PYTHONPATH:/home/ap/cleverhans/"



# Anaconda path
# export PATH="/home/ap/anaconda2/bin:$PATH"

# export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
# export JAVA_HOME=/usr/bin/
export JAVA_HOME=/usr/local/lib/jvm/java-8-oracle



export CAFFE_ROOT=/home/ap/caffe/build
export PYTHONPATH=$CAFFE_ROOT/python:$PYTHONPATH



# for Android NDK
export NDK_ROOT=/home/ap/helper_libs/android-ndk-r13b/


export PATH=$PATH:~/.cargo/bin
