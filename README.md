# neovim_setting_files

My neovim setting files.

---

```
~/
├── .config/
|   └──  nvim/ @ -> ~/dotfiles/neovim_setting_files/ ┐
|                                                    |
└── dotfiles/                                        |
    ├── neovim_setting_files/ <----------------------┘
    |   ├── .git/
    |   ├── init.vim
    |   ├── dein.toml        @ -> ~/dotfiles/vim_setting_files/.vim/rc/dein.toml --------┐
    |   ├── dein_lazy.toml   @ -> ~/dotfiles/vim_setting_files/.vim/rc/dein_lazy.toml ┐  |
    |   └── neovim_settings/ @ -> ~/dotfiles/vim_setting_files/.vim/settings/ ┐       |  |
    |                                                                         |       |  |
    └── vim_setting_files/                                                    |       |  |
        └── .vim/                                                             |       |  |
            ├── rc/                                                           |       |  |
            |   ├── dein.toml <-----------------------------------------------┼-------┼--┘
            |   └── dein_lazy.toml <------------------------------------------┼-------┘
            |                                                                 |
            └── settings/ <---------------------------------------------------┘
                ├── basic.vim
                ├── color.vim
                ├── keymap.vim
                └── plugins.vim
```
