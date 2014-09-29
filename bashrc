export TASKDL2_DIR=$HOME/software/taskdl-par
export MPIDL_DIR=$HOME/software/mpidl-par
export PATH=$TASKDL2_DIR/bin:$MPIDL_DIR/bin:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib:$HOME/lib64

if [ `hostname` == "sandybridge.txcorp.com" ]; then
  export OPAL_PREFIX=/contrib/openmpi-1.8.2-nodl
  export LD_LIBRARY_PATH=$OPAL_PREFIX/lib:$LD_LIBRARY_PATH
  export PATH=$OPAL_PREFIX/bin:$PATH
fi
