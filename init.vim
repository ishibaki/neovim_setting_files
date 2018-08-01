"     _/            _/    _/                    _/                 
"        _/_/_/        _/_/_/_/    _/      _/      _/_/_/  _/_/    
"   _/  _/    _/  _/    _/        _/      _/  _/  _/    _/    _/   
"  _/  _/    _/  _/    _/          _/  _/    _/  _/    _/    _/    
" _/  _/    _/  _/      _/_/  _/    _/      _/  _/    _/    _/     

runtime! neovim_settings/*.vim

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
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

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

  let s:toml = s:dein_config_home . '/dein.toml'
  let s:toml_lazy = s:dein_config_home . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

"End dein Scripts-------------------------

colorscheme iceberg
syntax on
