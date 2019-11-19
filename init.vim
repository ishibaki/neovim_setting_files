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

" vim-plug settings
call plug#begin('~/.config/nvim/plugged') " {{{

" ==================== PLUGINS ==================== {{{
Plug 'Shougo/unite.vim' " {{{
nnoremap [unite] <Nop>
nmap <Leader>u [unite]
nmap <Leader>u<CR> :<C-u>Unite -vertical<CR>
nnoremap <silent> [unite]u :<C-u>Unite<Space>file -vertical<CR>
nnoremap <silent> [unite]g :<C-u>Unite<Space>grep<CR>
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer -vertical<CR>
nnoremap <silent> [unite]j :<C-u>Unite<Space>jump -vertical<CR>
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
nnoremap <silent> [unite]b :<C-u>Unite<Space>bookmark -vertical<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
" }}}

Plug 'Shougo/deoplete.nvim' " {{{
let g:deoplete#enable_at_startup = 1
" }}}

Plug 'tacroe/unite-mark' " {{{
nnoremap <silent> [unite]m :<C-u>Unite -direction=topleft -vertical mark<CR>
" }}}

Plug 'cocopon/iceberg.vim' " {{{
" }}}

Plug 'neoclide/coc.nvim', {'branch': 'release'} " {{{
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if &filetype == 'vim'
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction
" }}}

Plug 'itchyny/lightline.vim' " {{{
function! g:Date()
    return strftime("%H:%M")
endfunction

set noshowmode
let g:lightline = {
\ 'colorscheme': 'iceberg',
\ 'active': {
\     'left': [
\         ['mode', 'paste'],
\         ['readonly', 'filename', 'modified'],
\     ],
\     'right': [
\        ['lineinfo'],
\        ['percent'],
\        ['fileformat', 'fileencoding', 'filetype', 'date'],
\     ],
\   },
\ 'component_function': {
\     'date': 'Date',
\ },
\ 'component_expand': {
\ },
\ 'component_type': {
\ },
\ }
" }}}

Plug 'itmammoth/doorboy.vim' " {{{
let g:doorboy_additional_quotations = {
    \ 'markdown': ['*'],
    \ }
" }}}

Plug 'tpope/vim-surround' " {{{
" }}}

Plug 'bronson/vim-trailing-whitespace' " {{{
let g:extra_whitespace_ignored_filetypes = ['unite']
" }}}

Plug 'nathanaelkane/vim-indent-guides' " {{{
let g:indent_guides_enable_on_vim_startup = 1
" }}}

Plug 'junegunn/vim-easy-align' " {{{
vmap <Enter> <Plug>(EasyAlign)
" easy-align を呼んだ上で，移動したりテキストオブジェクトを指定して整形．(e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

Plug 'easymotion/vim-easymotion' " {{{
" EasyMotionのleader keyを<Space>fにする
" fコマンドを，easymotionのfモードにする
let g:EasyMotion_leader_key = '<Space>f'
let g:EasyMotion_use_migemo = 1
map  <Space>f<Space> <Plug>(easymotion-bd-f)
map  <Space>ff       <Plug>(easymotion-bd-f)
map  <Space>fs       <Plug>(easymotion-bd-f2)
map  <Space>fd       <Plug>(easymotion-bd-f2)
map  <Space>ft       <Plug>(easymotion-bd-t)
map  <Space>f/       <Plug>(easymotion-sn)
map  <Space>j        <Plug>(easymotion-bd-jk)
map  <Space>k        <Plug>(easymotion-bd-jk)
map  <Space>fw       <Plug>(easymotion-bd-w)
map  <Space>fW       <Plug>(easymotion-bd-W)
map  <Space>fe       <Plug>(easymotion-bd-e)
map  <Space>fE       <Plug>(easymotion-bd-E)
map  <C-J>           <Plug>(easymotion-jumptoanywhere)
imap <C-J>           <C-O><Plug>(easymotion-bd-w)
" }}}

Plug 'rhysd/clever-f.vim' " {{{
map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)
let g:clever_f_use_migemo = 1
let g:clever_f_chars_match_any_signs = 1
let g:clever_f_mark_cursor = 1
let g:clever_f_timeout_ms = 500
" }}}

Plug 'haya14busa/vim-asterisk' " {{{
map *  <Plug>(asterisk-z*)
map <kMultiply> <Plug>(asterisk-z*)
map "  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g<kMultiply> <Plug>(asterisk-gz*)
map g" <Plug>(asterisk-gz#)
" }}}

Plug 'dhruvasagar/vim-table-mode' " {{{
let g:table_mode_corner = '|'
" }}}

Plug 'mattn/sonictemplate-vim' " {{{
let g:sonictemplate_vim_template_dir = '$HOME/.vim/sonictemplate-vim'
" }}}

Plug 'kana/vim-textobj-user' " {{{

Plug 'kana/vim-textobj-indent' " {{{
" }}}

Plug 'kana/vim-textobj-line' " {{{
" }}}
" }}}

Plug 'mhinz/vim-startify' " {{{
let g:startify_files_number = 5
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   === Most Recently Used Files ==='                  ]},
      \ { 'type': 'dir',       'header': ['   === Most Recently Used Files in '. getcwd(). ' ===']},
      \ { 'type': 'sessions',  'header': ['   === Sessions ==='                                  ]},
      \ { 'type': 'bookmarks', 'header': ['   === Bookmarks ==='                                 ]},
      \ { 'type': 'commands',  'header': ['   === Commands ==='                                  ]},
      \ ]

    let g:startify_bookmarks = [{"v": $MYVIMRC}, {"~": "~"},]

    function! s:filter_header(lines) abort
        let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
        let centered_lines = map(copy(a:lines),
            \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
        return centered_lines
    endfunction

    let g:startify_custom_header = [
        \ '              .',
        \ '    ________.:::.________',
        \ '    \....../.:?L \.......\',
        \ '     |::::| ????` :::::`',
        \ '     |::::| $$` .:::;".',
        \ '    .|;;;;| $ .;;;;" ,OS.',
        \ '   .G|IIII| .III7" ,ADNNF:.',
        \ '    "|EEEEEEEE7" ,ADDNNF;`',
        \ '     |BBBBBBF" ,ADDDNF;`',
        \ '     |MMMMF" ,ADDNNF;`',
        \ '     |MMF" *ADNNNN;`',
        \ '     `-`    `;MM;`',
        \ '              ``',
        \ ]
" }}}

Plug 'thinca/vim-quickrun' " {{{
let g:quickrun_config = {
\ 'python': {
        \ 'command': 'python3'
    \ },
\ 'ipynb': {
        \ 'command': 'python3'
    \ },
\ 'R': {
        \ 'command': 'R',
        \ 'cmdopt': '--quiet --no-save <'
    \ },
\ }
" }}}

Plug 'kshenoy/vim-signature' " {{{
let g:SignatureMap = {
\ 'Leader'             :  "m",
\ 'PlaceNextMark'      :  "m,",
\ 'ToggleMarkAtLine'   :  "m.",
\ 'PurgeMarksAtLine'   :  "m-",
\ 'DeleteMark'         :  "dm",
\ 'PurgeMarks'         :  "m<Space>",
\ 'PurgeMarkers'       :  "m<BS>",
\ 'GotoNextLineAlpha'  :  "']",
\ 'GotoPrevLineAlpha'  :  "'[",
\ 'GotoNextSpotAlpha'  :  "`]",
\ 'GotoPrevSpotAlpha'  :  "`[",
\ 'GotoNextLineByPos'  :  "]'",
\ 'GotoPrevLineByPos'  :  "['",
\ 'GotoNextSpotByPos'  :  "]`",
\ 'GotoPrevSpotByPos'  :  "[`",
\ 'GotoNextMarker'     :  "]=",
\ 'GotoPrevMarker'     :  "[=",
\ 'GotoNextMarkerAny'  :  "]-",
\ 'GotoPrevMarkerAny'  :  "[-",
\ 'ListBufferMarks'    :  "m/",
\ 'ListBufferMarkers'  :  "m?"
\ }
nnoremap [1 :call signature#marker#Goto('prev', 1, v:count)
nnoremap ]1 :call signature#marker#Goto('next', 1, v:count)
nnoremap [2 :call signature#marker#Goto('prev', 2, v:count)
nnoremap ]2 :call signature#marker#Goto('next', 2, v:count)
nnoremap [3 :call signature#marker#Goto('prev', 3, v:count)
nnoremap ]3 :call signature#marker#Goto('next', 3, v:count)
nnoremap [4 :call signature#marker#Goto('prev', 4, v:count)
nnoremap ]4 :call signature#marker#Goto('next', 4, v:count)
nnoremap [5 :call signature#marker#Goto('prev', 5, v:count)
nnoremap ]5 :call signature#marker#Goto('next', 5, v:count)
nnoremap [6 :call signature#marker#Goto('prev', 6, v:count)
nnoremap ]6 :call signature#marker#Goto('next', 6, v:count)
nnoremap [7 :call signature#marker#Goto('prev', 7, v:count)
nnoremap ]7 :call signature#marker#Goto('next', 7, v:count)
nnoremap [8 :call signature#marker#Goto('prev', 8, v:count)
nnoremap ]8 :call signature#marker#Goto('next', 8, v:count)
nnoremap [9 :call signature#marker#Goto('prev', 9, v:count)
nnoremap ]9 :call signature#marker#Goto('next', 9, v:count)
nnoremap [0 :call signature#marker#Goto('prev', 0, v:count)
nnoremap ]0 :call signature#marker#Goto('next', 0, v:count)
" }}}

Plug 'thinca/vim-localrc' " {{{
" ディレクトリごとに.local.vimrcを設定できる
" }}}

Plug 'sjl/gundo.vim' " {{{
let g:gundo_prefer_python3 = 1
let g:gundo_auto_preview = 1
nnoremap <F5> :GundoToggle<CR>
nnoremap gy   :GundoToggle<CR>
" }}}

Plug 'LeafCage/yankround.vim' " {{{
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-gP)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
" }}}

Plug 'qpkorr/vim-renamer' " {{{
" Rename機能を提供，:Renamerで起動，:Renで決定
" }}}

Plug 'pbrisbin/vim-mkdir' " {{{
" }}}

Plug 'chrisbra/vim-diff-enhanced' " {{{
" diffsplitが便利になるよ
" }}}

Plug 'mattn/webapi-vim' " {{{
" }}}

Plug 'mattn/excelview-vim' " {{{
" }}}

Plug 'idbrii/textobj-word-column.vim' " {{{
" }}}

" }}}

" ==================== ON DEMAND LOADING ==================== {{{

" ==================== MARKDOWN ==================== {{{

Plug 'Shougo/neosnippet.vim', {'for': ['python', 'markdown']} " {{{
let g:neosnippet#disable_runtime_snippets = {
    \   '_' : 1,
    \ }
let g:neosnippet#snippets_directory='$HOME/.vim/snippets/'
imap <C-k>       <Plug>(neosnippet_expand_or_jump)
smap <C-k>       <Plug>(neosnippet_expand_or_jump)
xmap <C-k>       <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" }}}

Plug 'alvan/vim-closetag', {'for': ['markdown', 'html']} " {{{
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.md,*.markdown,*.mkdown,*.mdown'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,markdown'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
" }}}

Plug 'kannokanno/previm', {'for': ['markdown', 'txt']} " {{{
" let g:previm_open_cmd = 'open -a Safari.app'
let g:previm_enable_realtime = 1
let g:previm_disable_default_css = 1
let g:previm_custom_css_path = '~/.pandoc/github.css'
nnoremap <silent> <Leader>P :PrevimOpen<CR>
" autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mdwn,mdown,markdown} PrevimOpen
" }}}

Plug 'Shougo/unite-outline', {'for': ['markdown']} " {{{
nnoremap <Leader>ol :<C-u>Unite -vertical outline<CR>
" }}}

Plug 'rafaqz/citation.vim', {'for': ['markdown']} " {{{
let g:citation_vim_bibtex_file="~/.pandoc/library.bib"
let g:citation_vim_mode="bibtex"
let g:citation_vim_cache_path='~/.vim/citation_cache'
let g:citation_vim_outer_prefix="["
let g:citation_vim_inner_prefix="@"
let g:citation_vim_suffix="]"
let g:citation_vim_et_al_limit=2
nnoremap <silent> <leader>c :<C-u>Unite -direction=topleft -vertical citation/key<CR>
nnoremap <silent> [unite]k  :<C-u>Unite -direction=topleft -vertical citation/key<CR>
nnoremap <silent> [unite]a  :<C-u>Unite -direction=topleft -vertical citation/abstract<CR>
nnoremap <silent> [unite]i  :<C-u>Unite -direction=topleft -vertical citation<CR>
" nnoremap <silent> K :<C-u>UniteWithCursorWord -direction=topleft -vertical citation/key<CR>
" }}}

Plug 'coachshea/vim-textobj-markdown', {'for': ['markdown']} " {{{
" }}}

Plug 'ishibaki/deoplete-biblatex', {'for': ['markdown']} " {{{
let g:deoplete#sources#biblatex#bibfile = '~/.pandoc/library.bib'
let g:deoplete#sources#biblatex#delimiter = ';'
" let g:deoplete#sources#biblatex#startpattern = '['
" }}}
"}}}

" ==================== PYTHON ==================== {{{

Plug 'julienr/vim-cellmode', {'for': ['python']} " {{{
let g:cellmode_tmux_sessionname=''
let g:cellmode_tmux_windowname=''
let g:cellmode_tmux_panenumber='0'
let g:cellmode_screen_sessionname='ipython'
let g:cellmode_screen_window='0'
let g:cellmode_cell_delimiter='\(##\|#%%\|#\s%%\)'

function! InsertCellSeparatorLine(...)
  let line_num = get(a:, 1, '.')
  if empty(getline(line_num))
    normal 79A#-
  else
    normal o79A#-
  endif
endfunction

nnoremap <silent><Space>" :<C-u>call InsertCellSeparatorLine()<CR>
" }}}

Plug 'szymonmaszke/vimpyter', {'for': ['ipynb']} " {{{
nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
nmap <silent><Leader>s :VimpyterStartJupyter<CR>
nmap <silent><Leader>S :VimpyterStartNteract<CR>
let g:vimpyter_view_directory = '$HOME/.vimpyter_views'
xnoremap <silent> ic <Esc>?```{.python?+1<CR>V/```/-1<CR>
xnoremap <silent> ac <Esc>?```{.python<CR>V/```<CR>
" }}}

" Plug 'deoplete-plugins/deoplete-jedi', {'for': ['python']} " {{{
" " }}}

" Plug 'davidhalter/jedi-vim', {'for': ['python']} " {{{
" let g:jedi#rename_command = "<Leader>R"
" let g:jedi#force_py_version = 3
" let g:jedi#completions_enabled = 0
" " }}}

" Plug 'bps/vim-textobj-python', {'for': ['python']} " {{{
" " }}}

" Plug 'python-mode/python-mode', {'for': ['python']} " {{{
" let g:pymode_python = 'python3'
" let g:pymode_run = 0
" let g:pymode_run_bind = '<leader>_'
" let g:pymode_doc_bind = '<leader>K'
" let g:pymode_rope_completion = 0
" " }}}

" }}}

" ==================== OTHERS ==================== {{{

Plug 'vim-scripts/Vim-R-plugin', {'for': ['R']} " {{{
let maplocalleader = ","
let vimrplugin_vsplit = 1
let vimrplugin_assign = 0
let vimrplugin_vimpager = "horizontal"

let vimrplugin_objbr_place = "console, right"
let vimrplugin_objbr_opendf = 0
" }}}

" Plug 'ujihisa/neco-look', {'for': ['markdown', 'rst', 'tex', 'gitcommit', 'gitrebase']} " {{{
" if !exists('g:neocomplete#text_mode_filetypes')
"     let g:neocomplete#text_mode_filetypes = {}
" endif
" let g:neocomplete#text_mode_filetypes = {
"     \ 'rst': 1,
"     \ 'markdown': 1,
"     \ 'gitrebase': 1,
"     \ 'gitcommit': 1,
"     \ 'tex': 1,
"     \ }
" " }}}

Plug 'cespare/vim-toml', {'for': ['toml']} " {{{
" }}}

Plug 'tyru/caw.vim', {'for': ['python', 'html', 'markdown', 'vim', 'toml', 'zsh', 'R']} " {{{
nmap gcc <Plug>(caw:wrap:toggle)
vmap gcc <Plug>(caw:wrap:toggle)
" }}}

Plug 'upamune/esa.vim', {'for': ['markdown']} " {{{
let g:esa_team = 'tishibashi-lab'
" }}}

Plug 'itchyny/vim-cursorword', {'for': ['python', 'html', 'toml', 'c']} " {{{
" }}}

" }}}

" }}}

call plug#end()
" }}}

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
