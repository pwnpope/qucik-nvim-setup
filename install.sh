sudo apt update
sudo apt install git vim curl exuberant-ctags npm nodejs python3-pip
pip3 install jedi pylint

# install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage


# vim plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cwd=$(pwd)
cd ~/.local/share/nvim/plugged/coc.nvim
npm install

# create config dir if it doesn't already exist
# create nvim dir if it doesn't already exist
# write config contents to init.vim for nvim config
mkdir ~/.config;mkdir ~/.config/nvim
cat config > ~/.config/nvim/init.vim

# navigate back to OG directory
cd $cwd
echo "\n[+]finished installing!"
