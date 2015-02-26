export LD_LIBRARY_PATH=$HOME/lib:$HOME/lib64

# setup a better command line
export PS1="\[\e]1;\h:\W\a\e]2;\h:\w\a\e[31;1m\]\W\$\[\e[0m\] "
export CLICOLOR=1
shopt -s histappend
shopt -s checkwinsize
export PROMPT_COMMAND='history -a'

export EDITOR="emacs -nw"

export PATH=.:$HOME/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib:$HOME/lib64
export CUDA_DIR=/usr/local/cuda

# for bilder
#export MAIL_ADDRESS=mgalloy@txcorp.com

# setup IDL license
#export LM_LICENSE_FILE=1700@zrv.txcorp.com

# setup CUDA
if [ -d $CUDA_DIR ]; then
  export LD_LIBRARY_PATH=$CUDA_DIR/lib64:$LD_LIBRARY_PATH
  export PATH=$CUDA_DIR/bin:$PATH
else
  if [ "x$SSH_TTY" != "x" ]; then
    echo "CUDA not present in $CUDA_DIR"
  fi
fi

# setup mglib
export MGLIB_DIR=$HOME/software/mglib
if [ -d $MGLIB_DIR ]; then
  export PATH=$MGLIB_DIR/bin:$PATH
else
  if [ "x$SSH_TTY" != "x" ]; then
    echo "mglib is not present in $MGLIB_DIR"
  fi
fi

# setup TaskDL
export TASKDL2_DIR=$HOME/projects/taskdl-2.4/install
if [ -d $TASKDL2_DIR ]; then
  export PATH=$TASKDL2_DIR/bin:$PATH
else
  if [ "x$SSH_TTY" != "x" ]; then
    echo "TaskDL not present in $TASKDL2_DIR"
  fi
fi

# setup mpiDL
export MPIDL_DIR=$HOME/software/mpidl-par
if [ -d $MPIDL_DIR ]; then
  export PATH=$PATH:$MPIDL_DIR/bin
else
  if [ "x$SSH_TTY" != "x" ]; then
    echo "mpiDL not present in $MPIDL_DIR"
  fi
fi

# setup rIDL
if [ -d $HOME/projects/ridl/install ]; then
  export MANPATH=$HOME/projects/ridl/install/share/man:$MANPATH
else
  if [ "x$SSH_TTY" != "x" ]; then
    echo "rIDL not present in $HOME/projects/ridl/install"
  fi
fi

if [ -a $HOME/.aliases ]; then
  source $HOME/.aliases
else
  if [ "x$SSH_TTY" != "x" ]; then
    echo "Aliases not present in $HOME/.aliases"
  fi
fi

if [ -a $HOME/.git-completion.bash ]; then
  source $HOME/.git-completion.bash
else
  if [ "x$SSH_TTY" != "x" ]; then
    echo "git completion not present"
  fi
fi
