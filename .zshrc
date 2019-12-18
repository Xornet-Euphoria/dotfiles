# Created by newuser for 5.4.2

export LANG=ja_JP.UTF-8

autoload -U compinit promptinit
compinit
promptinit

# Alias definitions.
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting

zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

