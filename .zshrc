export ZSH=/home/martin/.oh-my-zsh
ZSH_THEME="wezm"
plugins=(git z)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl":/home/martin/mozart/bin:/home/martin/mozart/platform/linux-i486

source $ZSH/oh-my-zsh.sh

IGNORE_DIRS=venv,.venv,.git,node_modules,bower_components,.tox,site-
DISABLE_AUTO_TITLE="true"

export EDITOR=emacs

# Base16 Shell
BASE16_SCHEME="chalk"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL


# Goodbye, non-blocking space
# setxkbmap -option "nbsp:none"

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
