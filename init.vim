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
" ~/dotfiles/neovim_setting_files/dein_nvim.toml

syntax on
colorscheme iceberg

set inccommand=nosplit

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

" " vim: set foldmethod=marker :
