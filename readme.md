# quickly install and configure Nvim

- install:
```
git clone https://github.com/pwnpope/quick-nvim-setup
mv quick-nvim-setup .quick-nvim-setup
cd .quick-nvim-setup
chmod +x install.sh ; ./install.sh
# use one of these to add an alias for nvim
# echo 'alias nvim="~/.quick-nvim-setup/nvim.appimage" >> ~/.zshrc'
# echo 'alias nvim="~/.quick-nvim-setup/nvim.appimage" >> ~/.bashrc'

nvim
```

- auto completion for python, c, rust
```
:PlugInstall
:CocInstall coc-python coc-clangd coc-rls coc-phpls
```
