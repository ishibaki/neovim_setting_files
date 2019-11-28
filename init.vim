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
" ~/dotfiles/neovim_setting_files/neovim_settings/vim-plug.vim
" ~/dotfiles/neovim_setting_files/dein.toml
" ~/dotfiles/neovim_setting_files/dein_lazy.toml
" ~/dotfiles/neovim_setting_files/dein_nvim.toml

" " dein Scripts {{{ -----------------------------
" if &compatible " {{{
"   set nocompatible               " Be iMproved
" endif
" " }}}
" 
" " Required:
" " dein cache file setting {{{
" let s:dein_dir = expand('~/.config/nvim/dein')
" let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" if &runtimepath !~# '/dein.vim'
"   execute 'set runtimepath+=' . fnamemodify(s:dein_repo_dir, ':p')
" endif
" " }}}
" 
" " Required:
" if dein#load_state(s:dein_dir)
"   call dein#begin(s:dein_dir)
" 
"   " Let dein manage dein
"   " Required:
"   call dein#add(s:dein_repo_dir)
" 
"   " Add or remove your plugins here: {{{
"   call dein#add('Shougo/deoplete.nvim')
"   call dein#add('Shougo/denite.nvim')
"   if !has('nvim')
"     call dein#add('roxma/nvim-yarp')
"     call dein#add('roxma/vim-hug-neovim-rpc')
"   endif
"   call dein#add('deoplete-plugins/deoplete-jedi')
"   call dein#end()
"   " }}}
" endif
" 
" " Required:
" filetype plugin indent on
" syntax enable
" 
" " If you want to install not installed plugins on startup {{{
" if dein#check_install()
"   call dein#install()
" endif
" " }}}
" 
" let s:dein_cache_dir = expand('~/.cache/dein')
" let s:dein_config_home = $XDG_CONFIG_HOME . '/nvim'
" 
" if dein#load_state(s:dein_cache_dir) " {{{
"   call dein#begin(s:dein_cache_dir)
" 
"   let s:toml_common = s:dein_config_home . '/dein.toml'
"   let s:toml_lazy = s:dein_config_home . '/dein_lazy.toml'
"   let s:toml_nvim = s:dein_config_home . '/dein_nvim.toml'
" 
"   call dein#load_toml(s:toml_common, {'lazy': 0})
"   call dein#load_toml(s:toml_lazy, {'lazy': 1})
"   call dein#load_toml(s:toml_nvim, {'lazy': 0})
" 
"   call dein#end()
"   call dein#save_state()
" endif " }}}
" 
" " End dein Scripts }}} -------------------------

let g:deoplete#enable_at_startup = 1
syntax on
colorscheme iceberg

set inccommand=nosplit

let g:jedi#completions_enabled = 0
" let g:deoplete#sources#jedi#server_timeout=100
" let g:deoplete#sources#jedi#statement_length=100
let g:deoplete#sources#jedi#python_path='/usr/local/bin/python3.6'
call deoplete#custom#source('_', 'max_info_width', 0)
call deoplete#custom#source('_', 'max_kind_width', 0)

" submode settings {{{
" タイムアウト設定をOFFに
let g:submode_timeout = 0
" Submodeから離れるときのキー入力を有効にする
let g:submode_keep_leaving_key = 1

" Winsize Change Mode {{{
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>+')
call submode#enter_with('winsize', 'n', '', '<C-w><kPlus>', '<C-w>+')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '<C-w><kMinus>', '<C-w>-')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '+', '<C-w>+')
call submode#map('winsize', 'n', '', '<kPlus>', '<C-w>+')
call submode#map('winsize', 'n', '', '-', '<C-w>-')
call submode#map('winsize', 'n', '', '<kMinus>', '<C-w>-')
call submode#map('winsize', 'n', '', '=', '<C-w>=')
" }}}

" Window Move Mode {{{
call submode#enter_with('winmove', 'n', '', '<C-w>h', '<C-w>h')
call submode#enter_with('winmove', 'n', '', '<C-w>j', '<C-w>j')
call submode#enter_with('winmove', 'n', '', '<C-w>k', '<C-w>k')
call submode#enter_with('winmove', 'n', '', '<C-w>l', '<C-w>l')
call submode#enter_with('winmove', 'n', '', '<C-w>H', '<C-w>H')
call submode#enter_with('winmove', 'n', '', '<C-w>J', '<C-w>J')
call submode#enter_with('winmove', 'n', '', '<C-w>K', '<C-w>K')
call submode#enter_with('winmove', 'n', '', '<C-w>L', '<C-w>L')
call submode#map('winmove', 'n', '', 'h', '<C-w>h')
call submode#map('winmove', 'n', '', 'j', '<C-w>j')
call submode#map('winmove', 'n', '', 'k', '<C-w>k')
call submode#map('winmove', 'n', '', 'l', '<C-w>l')
call submode#map('winmove', 'n', '', 'H', '<C-w>H')
call submode#map('winmove', 'n', '', 'J', '<C-w>J')
call submode#map('winmove', 'n', '', 'K', '<C-w>K')
call submode#map('winmove', 'n', '', 'L', '<C-w>L')
" }}}

" Tab Move Mode {{{
call submode#enter_with('tabmove', 'n', '', 'gt', 'gt')
call submode#enter_with('tabmove', 'n', '', 'gT', 'gT')
call submode#map('tabmove', 'n', '', 't', 'gt')
call submode#map('tabmove', 'n', '', 'T', 'gT')
" }}}
" }}}

" vim: set foldmethod=marker :
