export PATH=~/bin:$PATH

alias emacs="/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs -nw"

# Set JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

# Setup the Bash Prompt
source ~/.git-prompt.sh

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
else
    color_prompt=
fi
 
if [ "$color_prompt" = yes ]; then
    export PS1="\[\e[01;33m\]\u@local\[\e[0m\]:\W\$(__git_ps1) \$ "
    export SUDO_PS1="\[\e[33;01;41m\]\u@local\[\e[0m\]:\W\$(__git_ps1) \$ "
else
    export PS1="\u@\H:\$PWD\n"
fi