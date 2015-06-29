### Frequently edited configs

IGNORE_DIRS=venv,.venv,.git,node_modules,bower_components,.tox,site-packages

### 

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, z)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl\
:/home/martin/.gem/ruby/2.2.0/bin:/home/martin/hath/go/bin"

export PATH=$PATH":/opt/android-sdk/platform-tools"
export EDITOR=vim

# Base16 Shell
BASE16_SCHEME="chalk"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL


# Goodbye, non-blocking space
setxkbmap -option "nbsp:none"

alias vim=gvim

# more git aliases
alias gs="gst"
alias gd="git diff --color=auto"
alias gds="git diff --color=auto --staged"

alias asm="clang -S -mllvm --x86-asm-syntax=intel"
alias clip="xsel -ib"
alias irc="mosh irc@irc.mthoresen.com -- tmux attach -t irc"
alias tmux='tmux -2'
alias vn="source venv/bin/activate"
alias reload="source ~/.zshrc"

bindkey -s "\es" "^asudo ^e"

# not really sure if i need an alias, instead of just calling the function 'm'
alias m=__m
function __m () {
    if ! [ -n "${1+x}" ]; then
        echo 'Usage:'
        echo -e '\tm <term>'
        return;
    fi
    term=$1;
    shift;
    # braces expansion before variable inserting ... 
    grep "$term:" -Iinr $(echo $(eval echo --exclude-dir={$IGNORE_DIRS})) "$@" *
}

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
