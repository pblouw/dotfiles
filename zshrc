# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/miniconda3/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"


# CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

# FZF setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_BASE=~/.fzf
# export FZF_COMPLETION_TRIGGER=''
# bindkey '^T' fzf-completion
# bindkey '^I' $fzf_default_completion

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh



# User configuration
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"


alias zshconfig="vim ~/.zshrc"

__git_files () { 
    _wanted files expl 'local files' _files     
}

# Conda Setup
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/pblouw/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/pblouw/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/pblouw/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/pblouw/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
