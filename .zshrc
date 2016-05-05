export ZSH=/home/martin/.oh-my-zsh
ZSH_THEME="wezm"
plugins=(git z)

export GOPATH=$HOME/go/
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl":/home/martin/.cargo/bin:$GOPATH/bin
export RUST_SRC_PATH='/home/martin/src/rust/src'
export CARGO_HOME='/home/martin/.cargo'

source $ZSH/oh-my-zsh.sh

IGNORE_DIRS=venv,.venv,.git,node_modules,bower_components,.tox,site-
DISABLE_AUTO_TITLE="true"

export EDITOR=gvim

# Base16 Shell
BASE16_SCHEME="solarized"
BASE16_LIGHT="light"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.$BASE16_LIGHT.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL


# Goodbye, non-blocking space
# setxkbmap -option "nbsp:none"

# Colors
alias pacman="pacman --color=auto"

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

# Android pathing for react native
export ANDROID_HOME="$(pwd)/Android/Sdk"

# sbcl stuff
function sbcll_() {sbcl.compile $@ && sbcl.run $(echo $@ | sed "s/\.lisp/\.fasl/g")}

alias xbox="sudo xboxdrv --detach-kernel-driver"

alias net="sudo systemctl restart netctl-auto@wlp1s0.service"

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
