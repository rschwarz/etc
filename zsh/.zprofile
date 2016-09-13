# You may need to manually set your language environment
export LANG=en_US.UTF-8

# locally installed
export PATH="${HOME}/bin:${PATH}"

# go dev
export GOPATH="${HOME}/go"
export PATH="${GOPATH}/bin:${PATH}"
export GO15VENDOREXPERIMENT=1

# Gurobi
export GUROBI_HOME=$HOME/opt/gurobi/linux64
export GRB_LICENSE_FILE=$GUROBI_HOME/gurobi.lic
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"

# CPLEX
export CPLEX_HOME=$HOME/opt/cplex126
export ILOG_LICENSE_FILE=${CPLEX_HOME}/access.ilm
# export path to dynamic library, only
# export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${CPLEX_HOME}/cplex/lib/x86-64_linux/static_pic"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${CPLEX_HOME}/cplex/bin/x86-64_linux/"

# SCIP
export SCIPOPTDIR=$HOME/src/scipoptsuite

# Julia
export JULIALANG_HOME=$HOME/opt/julia
export PATH=${JULIALANG_HOME}/bin/:$PATH

# Clang/LLVM
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib/llvm-3.5/lib"


# auto-start X on first login shell
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
