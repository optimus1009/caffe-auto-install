echo 'install lib dependencies...'
sudo apt-get update
sudo apt-get install git libboost-all-dev libprotobuf-dev \
libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev \
protobuf-compiler libgflags-dev libgoogle-glog-dev liblmdb-dev \
python-pip clang liblapack-dev libatlas-base-dev libblas-dev gfortran

echo 'install python-dependencies...'
sudo pip install numpy scipy Cython 
sudo ln -s /usr/local/lib/python2.7/dist-packages/numpy /usr/lib/python2.7/dist-packages/numpy
sudo pip install scikit-image scikit-learn 
sudo pip install matplotlib 
#sudo pip install pyopencv
sudo pip install ipython jupyter
sudo pip install h5py leveldb lmdb protobuf 
sudo pip install networkx nose 
sudo pip install pandas 
sudo pip install python-dateutil  
sudo pip install python-gflags pyyaml Pillow six pyzmq singledispatch
sudo pip install backports_abc certifi jsonschema graphviz  qtawesome pydot

echo 'checkout caffe source code and build..'
cd ~/
git clone https://github.com/BVLC/caffe
cd caffe
mv Makefile.config.example Makefile.config
make all
echo "done!"
