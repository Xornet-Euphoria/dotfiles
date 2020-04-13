# PATH
if test -d $HOME/bin
    set -x PATH $HOME/bin $PATH
end

if test -d $HOME/.local/bin
    set -x PATH $HOME/.local/bin $PATH
end

# cargo
if test -d $HOME/.cargo/bin
    set -x PATH $HOME/.cargo/bin $PATH
end

# pyenv
if test -d $HOME/.pyenv
    set -x PYENV_ROOT $HOME/.pyenv
    set -x PATH $PYENV_ROOT/bin $PATH
    . (pyenv init - | psub)
end

# alias
if test -f $HOME/.aliases
    source $HOME/.aliases
end

# for bobthefish
set -g theme_display_git_master_branch yes
set -g theme_color_scheme dracula

