for file in (l .config/fish/functions -1 | grep -v /)
    ln -fs $HOME/dotfiles/.config/fish/functions$file $HOME/$file
end

