for file in (l .config/fish/functions -1 | grep -v /)
    ln -fs $HOME/dotfiles/.config/fish/functions/$file $HOME/.config/fish/functions/$file
end

set dotfiles .gitconfig .config/fish/config.fish .vimrc

for file in $dotfiles
    ln -fs $HOME/dotfiles/$file $HOME/$file
end

if test (uname) = "Linux"
    echo "aliases for Linux"
    ln -fs $HOME/dotfiles/.aliases $HOME/.aliases
else if test (uname) = "Darwin"
    echo "aliases for Mac"
    ln -fs $HOME/dotfiles/.aliases_mac $HOME/.aliases
end

