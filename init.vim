"     _/            _/    _/                    _/
"        _/_/_/        _/_/_/_/    _/      _/      _/_/_/  _/_/
"   _/  _/    _/  _/    _/        _/      _/  _/  _/    _/    _/
"  _/  _/    _/  _/    _/          _/  _/    _/  _/    _/    _/
" _/  _/    _/  _/      _/_/  _/    _/      _/  _/    _/    _/

runtime! neovim_settings/*.vim
" ~/dotfiles/neovim_setting_files/neovim_settings/basic.vim
" ~/dotfiles/neovim_setting_files/neovim_settings/color.vim
" ~/dotfiles/neovim_setting_files/neovim_settings/keymap.vim
" ~/dotfiles/neovim_setting_files/neovim_settings/plugins.vim
" ~/dotfiles/neovim_setting_files/dein.toml
" ~/dotfiles/neovim_setting_files/dein_lazy.toml

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
let s:dein_dir = expand('~/.config/nvim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  execute 'set runtimepath+=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)

  " Add or remove your plugins here:
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

let s:dein_cache_dir = expand('~/.cache/dein')
let s:dein_config_home = $XDG_CONFIG_HOME . '/nvim'

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  let s:toml_common = s:dein_config_home . '/dein.toml'
  let s:toml_lazy = s:dein_config_home . '/dein_lazy.toml'

  call dein#load_toml(s:toml_common, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

"End dein Scripts-------------------------
let g:deoplete#enable_at_startup = 1
syntax on
colorscheme iceberg

set inccommand=nosplit
