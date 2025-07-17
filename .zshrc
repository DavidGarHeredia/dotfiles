# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/openssl@3/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/garciaherediad/.oh-my-zsh"
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# Pluggins
plugins=(git)


# Certificates
MY_CERT="/Users/garciaherediad/Documents/certificate.pem"
export JULIA_SSL_CA_ROOTS_PATH=""
export REQUESTS_CA_BUNDLE=$MY_CERT
export CURL_CA_BUNDLE=$MY_CERT
export SSL_CERT_FILE=$MY_CERT
export CA_CERTIFICATE=$MY_CERT
export PIP_CERT=$MY_CERT
export NODE_EXTRA_CA_CERTS=$MY_CERT

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Rust
source ~/.cargo/env

# Alias
alias vim="nvim"

# Gurobi
export GUROBI_HOME="/Library/gurobi1200/macos_universal2"
export GRB_LICENSE_FILE="/Users/garciaherediad/gurobi_lics/gurobi_cluster/gurobi.lic"
#export GRB_LICENSE_FILE="/Users/garciaherediad/gurobi_lics/dev_float/gurobi.lic"

#export GRB_LICENSE_FILE="/Users/garciaherediad/gurobi_lics/prod_float/gurobi.lic"
#export GRB_LICENSE_FILE="/Users/garciaherediad/gurobi_lics/prod_wls/gurobi.lic"
#export GRB_LICENSE_FILE="/Users/garciaherediad/gurobi_lics/dev_wls/gurobi.lic"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/garciaherediad/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/garciaherediad/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/garciaherediad/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/garciaherediad/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


. "$HOME/.local/bin/env"
