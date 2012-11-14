# bring back US english
export LANG=en_US.UTF-8

# correct mutt sender
export EMAIL=schwarz@zib.de

# general convenience
alias ls='ls --color'
alias ll='ls -l'
alias  l='ll'
alias la='ls -la'
alias lt='ls -latr'

# colorless htop
alias  h='htop -C'

# ubiquitous emacs
export EDITOR=emacsclient
export CVS_EDITOR=emacsclient
export CVSEDITOR=emacsclient
export SVN_EDITOR=emacsclient
export SVNEDITOR=emacsclient

# set some paths
export PATH=$HOME/bin:$PATH

# GUROBI
export GUROBI_HOME=$HOME/opt/gurobi501/linux64
export GRB_LICENSE_FILE=$GUROBI_HOME/gurobi.lic
export GUROBI_ROOT=$GUROBI_HOME

export CPLEX_ROOT=$HOME/opt/cplex124
export ILOG_LICENSE_FILE=${CPLEX_ROOT}/access.ilm

export PYMACS_PYTHON=python2
