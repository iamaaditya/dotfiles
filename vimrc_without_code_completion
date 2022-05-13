set nocompatible
filetype off
" set clipboard=exclude:.*
set clipboard=
set hidden

set termguicolors
 if has('nvim')
" https://github.com/neovim/neovim/wiki/FAQ
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
endif


" colon mapping
nnoremap ; :
" nnoremap : ;
vnoremap ; :
" vnoremap : ;

let mapleader="\<Space>"       " leader is comma
"Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
set rtp+=$GOROOT/misc/vim
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
" Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-eunuch'

" Plugin 'maxbrunsfeld/vim-yankstack' " use meta-p and meta-shift-p to cycle over the yank
" nnoremap <Leader>p <Plug>yankstack_substitute_older_paste
" nnoremap <Leader>P <Plug>yankstack_substitute_newer_paste

Plugin 'mg979/vim-yanktools'
let g:yanktools_main_key = 's'
nmap      S s$
nnoremap  Y y$

" Plugin 'svermeulen/vim-easyclip'
" Plugin 'sjl/gundo.vim'
" Plugin 'rking/ag.vim'

" Replaced with wincent/ferret (see below)
" Plugin 'mileszs/ack.vim'

Plugin 'majutsushi/tagbar'
    nmap <Bar> :TagbarToggle<CR>
    let g:tagbar_width=30
    let g:tagbar_show_linenumbers=0

" Plugin 'airblade/vim-gitgutter'

" Plugin 'haya14busa/incsearch.vim'

" Plugin 'terryma/vim-expand-region'
" vmap v <Plug>(expand_region_expand)
" vmap <C-v> <Plug>(expand_region_shrink)

" CtrlP the most useful plugin
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<C-p>'
map <C-o> :CtrlPMRUFiles<CR>
map <C-b> :CtrlPBuffer<CR>
" imap <C-b> <Esc>:CtrlPMRUFiles<CR>
" CtrlP settings
let g:ctrlp_user_command = 'ag %s -l --smart-case -g ""'
let g:ctrlp_working_path_mode = 'ca'

" The option below works only if ctrlp default globfiles() is used to get the
" files, not when user_command (ag above) is used 
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" if has('nvim')
"   Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plugin 'Shougo/deoplete.nvim'
"   Plugin 'roxma/nvim-yarp'
"   Plugin 'roxma/vim-hug-neovim-rpc'
" endif

" Plugin 'zchee/deoplete-jedi'
" let g:deoplete#enable_at_startup = 1
" autocmd CompleteDone * pclose!
"let g:deoplete#auto_complete_delay = 10
" let g:deoplete#sources#jedi#server_timeout = 30
" closes the preview window after completion is done
"
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Plugin 'terryma/vim-multiple-cursors'
Plugin 'mtth/scratch.vim'
Plugin 'wellle/targets.vim'
" Plugin 'vim-scripts/mru.vim'
" Plugin 'wakatime/vim-wakatime'


" Plugin for latex support
" Plugin 'lervag/vimtex'
" Plugin 'vim-latex/vim-latex'

" Plugin for folding in latex
" Plugin 'matze/vim-tex-fold'

" Plugin to run the terminal commands in async
" Plugin 'skywind3000/asyncrun.vim'

" Plugin to auto-complete 
" Plugin 'maralla/completor.vim'

" altternate to powerline but ended up not using 
" Plugin 'bling/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" let g:airline_theme='durant'

"awesome plugin, which tablularises by given separator 
" :Tab /<symbol>
Plugin 'godlygeek/tabular'

" Pytho nmode for vim supports pylint, rope, pydoc, pyflakes,
" execute one line using ,r
" MORE HEADACHE than USE
" Plugin 'klen/python-mode'

" Plugin to automatically generate ctags & exuberant tags
" Plugin 'xolox/vim-easytags'
"     let g:easytags_autorecurse = 1
"     let g:easytags_async = 1
"     let g:easytags_suppress_report = 1
" Plugin 'xolox/vim-misc'

" Plugin clever f, extends usage of f, F , t And T
Plugin 'rhysd/clever-f.vim'
" plugin for the using tab for the name completion
" Plugin 'ervandew/supertab'
" setting for the super tab to start the completion from top and not backwards
" let g:SuperTabDefaultCompletionType = "<c-n>"

" Plugin to allow easy data flow b/n vim and tmux
Plugin 'benmills/vimux'
"Plugin 'mvanderkamp/vimux'
" 
" plugin to automatically generate the tags file
" Plugin 'ludovicchabant/vim-gutentags'

" Plugin to visually show location in the file in the status bar (see right)
" Plugin 'naddeoa/vim-visual-page-percent'


" increases the utility of space to enchance the repeat command. Use space to
" repeat
" # remvoing as it hijacks ; and breaks sneak
" Plugin 'spiiph/vim-space'

"add buffers at the tabline
Plugin 'ap/vim-buftabline'
let g:buftabline_show = 1 " 0 no show, 1 show only if more than 1 buf, 2 always show
let g:buftabline_numbers = 2
let g:buftabline_indicators = 1
" let g:buftabline_separators = 0

" Plugin 'bling/vim-bufferline'
"
" Plugin 'bagrat/vim-workspace'

" better solarized using erb
" Plugin 'ericbn/vim-solarized'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'lifepillar/vim-solarized8'

" add things to status line
" Plugin 'maciakl/vim-neatstatus'
" hi CursorLine ctermbg=black cterm=none
" hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white
set cursorline
au InsertLeave * set cursorline
au InsertEnter * set nocursorline



" Plugin interactive scratchpad (show live results for python)
" Plugin 'metakirby5/codi.vim'

" Plugin emacs like orgmode in Vim
" Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'

" plugin to show history of yanks
"
" Plugin 'maxbrunsfeld/vim-yankstack'
" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste

" Plugin 'vim-scripts/YankRing.vim'
" let g:yankring_clipboard_monitor=0
" nnoremap ,zp :YRPaste<CR>

" Plugin to select calendar in vim-org mode
Plugin 'mattn/calendar-vim'

" Plugin 'shinokada/dragvisuals.vim'
" Plugin 'mhinz/vim-startify'                           " a start screen with recently modified files and vim sessions
"     let g:startify_files_number = 30
"     let g:startify_session_persistence = 0          " automatically update sessions
"     let g:startify_session_delete_buffers = 1       " delete open buffers before loading a new session
"     let g:startify_custom_footer = [
"         \ '',
"         \ '    b   ➤ open in new buffer  :SLoad   ➤ load a session     ',
"         \ '    s,v ➤ open in split       :SSave   ➤ save a session     ',
"         \ '    t   ➤ open in tab         :SDelete ➤ delete a session   ',
"         \ '',
"         \ ]
"     let g:startify_custom_header =
"         \ map(split(system('fortune'), '\n'), '"   ". v:val') + ['']

" Plugin 'vim-scripts/bufmap.vim'

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

filetype plugin on     " required!
filetype indent on
filetype plugin indent on
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_dividers_override = ["\Ue0b0", "\Ue0b1", "\Ue0b2", "\Ue0b3"]
" let g:Powerline_symbols_override = { 'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2" }
" let g:Powerline_symbols = 'fancy'
" source ~/.vim/bundle/powerline/build/lib/powerline/ext/vim/source_plugin.vim
"python from powerline.ext.vim import source_plugin; source_plugin()
" let $PAGER=''

syntax on
" enables mouse scroll when using iterm
" set mouse=a
set ssop-=options
set encoding=utf-8
set history=2707
set undolevels=2512
" set colorcolumn=80
set laststatus=1 "set visualbell
set noerrorbells
set wrapscan
set nowrap
" set nowrap
set noswapfile
"set nobackup
set backup
set backupdir=~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set autoindent
set copyindent
set showmatch
set ruler
" set rulerformat=%f
set hlsearch
set wildmenu
set incsearch
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase
set smarttab
set lazyredraw
set expandtab
set modelines=0
set backspace=start,indent,eol
" set t_Co=256
set showtabline=0
set showmode
set scrolloff=10
"set guifont=Monaco:h13
set nolist  "hide invisible characters
set autowrite
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"folding settings"
set foldmethod=indent
set foldnestmax=2
" set nofoldenable
set foldlevel=1
set shortmess=atc

" since i find it useful at other times too
" set invcursorline
" set cursorline
" autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
" autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
" autocmd BufEnter * silent! lcd %:p:h

" for the vimdiff hide the common lines
set diffopt=filler,context:0

" let localleader=","
" nmap <leader>i <plug>(vimtex-cmd-create)

" allows cursor change in tmux mode
" if exists('$TMUX')
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" else
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif

" setting for vim-visual-page-percent
" set statusline+=%{VisualPercent()}
set statusline=%<\ %n:%F\ %m%r%y%=%-35.(L:\ %l\ /\ %L,\ C:\ %c%V\ (%P)%)

" easymotion configs
" let g:EasyMotion_leader_key = '<Leader>'
" session configs
let g:session_autosave = 'no'


" Syntastic always show the errors
" let g:syntastic_auto_loc_list=1
" let g:syntastic_python_checkers=['flake8']
" let g:syntastic_python_flake8_args='--ignore=E101,E111,E112,E113,E114,E115,E116,E121,E122,E123,E124,E125,E126,E127,E128,E129,E131,E133,E201,E202,E203,E211,E221,E222,E223,E224,E225,E226,E227,E228,E231,E241,E242,E251,E261,E262,E265,E266,E271,E272,E273,E274,E301,E302,E303,E304,E401,E402,E501,E502,E701,E702,E703,E704,E711,E712,E713,E714,E721,E731,E901,E902,W191,W291,W292,W293,W391,W503,W601,W602,W603,W604,F401'

set pastetoggle=<F3>
" change key bindings
"
" nnoremap : ;
" nnoremap ; :
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
" STOP changing the default one key behaviours !
nnoremap H ^
nnoremap L $
" highlight last inserted text
nnoremap gV `[v`]
" make the Y behave similar to D

" center the next or previous find
nmap n :norm! nzzzv<CR>
nmap N :norm! Nzzzv<CR>

nnoremap M J
nnoremap J 10j
nnoremap K 10k

" map M m$
" 
" map ,g :call NERDComment(0,"toggle")<CR>
map <leader>g gcc

" file explorer plugin
" Plugin 'scrooloose/nerdtree'
map <leader>o :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['\.out$', '\.bin$', '\.pyc$']
let g:NERDTreeWinSize = 30
"vmap <C-f> :fold<CR>
set rnu
" nmap <CR> :set rnu!<CR>
map <C-c> :nohlsearch<CR>
"map <C-S-l> :set rl<CR>
"map <C-S-k> :set norl<CR>
" map <C-l> :tabn<CR>
" map <C-h> :tabp<CR>
" map <C-n> :tabnew<CR>

" binding for folding (,)
nmap <BS> 0za

" make - as quit without saving 
nnoremap - :q<CR>
" open vimrc
nnoremap <leader>vi :e ~/.vimrc<CR>
nnoremap <leader>vc :e ~/pathai.zsh<CR>
"
" command -nargs=0 -bar Update if &modified 
"                            \|    if empty(bufname('%'))
"                            \|        browse confirm write
"                            \|    else
"                            \|        confirm write
"                            \|    endif
"                            \|endif
" nnoremap <C-k> :up<CR>
" inoremap <C-k> <Esc>:up<CR>i

" save using leader key
" map <leader>w :w<CR>
map <leader><leader> :w<CR>
" imap <leader>w <Esc>:w<CR>

" Make copy of previous line and comment the previous one, like backup line
map <leader>e yypgcck<CR>

" map <leader>m :MRU<CR>
" FIXME
" map <leader>j OFIXME<ESC>,gj
map <leader>j :!python %<CR>

" map <leader>j %!python -m json.tool<CR>
map <leader>x :bd<CR>
" imap <leader>d <Esc>:bd<CR>
" syntastic check
" nnoremap <leader>l :SyntasticCheck<CR>



"replace the word under the cursor
" nnoremap <leader>s :%s/\<<C-r><C-w>\>/

" map <F1> :exec '!make' <CR>
" imap <F1> :exec '!make' <CR>
map <F1> :silent make\|redraw!\|cc<CR>
" imap <F1> :silent make\|redraw!\|cc<CR>
"command P !python %
"map <C-j> :exec '!python' shellescape(@%, 1)<CR>
"imap <C-j> <Esc>:exec '!python' shellescape(@%, 1)<CR>

" map <C-j> :!gcc -o %.out %; ./%.out<CR>
" imap <C-j> :!gcc -o %.out %; ./%.out<CR>

" Jedi is better
" Plugin 'Valloric/YouCompleteMe'
" map <F2> :YcmCompleter GetDoc<CR>
" imap <F2> <Esc>:YcmCompleter GetDoc<CR>
" YCM configs
" let g:ycm_auto_trigger = 1
"let g:ycm_semantic_triggers = {'haskell' : ['.']}
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1

" This is to fix the ValueError:  still no compile flags, no completions yet
" for the  C and CPP codes
" let g:ycm_global_ycm_extra_conf = "~/dotfiles/vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.

map <F5> :exec '!python' shellescape(@%, 1)<CR>
" imap <F5> <Esc>:exec '!python' shellescape(@%, 1)<CR>
" Python 3 
"map <C-m> :exec '!python3' shellescape(@%, 1)<CR>
"imap <C-m> <Esc>:exec '!python3' shellescape(@%, 1)<CR>
"map <leader>c :Calc<CR> 

"haya14busa incremental search
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" insert one character only and return back to normal mode
nmap <leader>i i_<Esc>r
" nmap <space> :noh<CR>
" nmap <space> <C-f>
" nmap <S-space> <C-b>
" nnoremap <space> za 
" vnoremap <space> zf

" settigns for gundo
" nnoremap <leader>u :GundoToggle<CR>
" let g:gundo_width=50
" let g:gundo_preview_height=20
" open ag.vim
" changed from ag.vim to ack.vim as ag is deprecated
" Wed 28 Sep 2016 02:38:25 PM EDT 
" let g:ackprg = 'ag --vimgrep'
" nnoremap <leader>a :Ack<space> 
" nnoremap <leader>q : ~/ml-platform/pathai/ <C-b>Ack<space> 
let g:ack_autoclose = 1

" nnoremap <leader>s O<Esc>j

" highlighted uncommnted print statements in python code
" nnoremap <leader>c /^[^#]*\s*print<CR>
" 
" nnoremap <leader>c :VimuxInterruptRunner<CR>

" nnoremap <leader>b :bu 
" nnoremap <leader>b :Startify<CR>
nnoremap <leader>r :up<CR>:b#<CR>

cmap w!! %!sudo tee > /dev/null %

" insert date on Wed 28 Sep 2016 02:37:09 PM EDT5
nnoremap <F4> "=strftime("%c")<CR>P
inoremap <F4> <C-R>=strftime("%c")<CR>

" Useful plugin but never used it.
" Needs changing habits
" Plugin 'justinmk/vim-sneak'
" Plugin 'FuzzyFinder'
" Plugin 'L9'
" nmap s <Plug>Sneak_s
" nmap S <Plug>Sneak_S
" visual-mode
" xmap s <Plug>Sneak_s
" xmap S <Plug>Sneak_S
" operator-pending-mode
" omap s <Plug>Sneak_s
" omap S <Plug>Sneak_S


"improve autocomplete menu color
highlight Pmenu ctermbg=gray ctermfg=black gui=bold




" Code to rename the file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        "exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
" map <leader>r :call RenameFile()<cr>


" settings for dragvisuals.vim
" runtime plugin/dragvisuals.vim

" vmap  <expr>  <LEFT>   DVB_Drag('left')                     
" vmap  <expr>  <RIGHT>  DVB_Drag('right')                    
" vmap  <expr>  <DOWN>   DVB_Drag('down')                     
" vmap  <expr>  <UP>     DVB_Drag('up')                       
" vmap  <expr>  D        DVB_Duplicate()                      
" Remove any introduced trailing whitespace after moving... 
" let g:DVB_TrimWS = 1



" program to open pdf files as text using pdftotext
" run pdftotext to read PDF files
" fun s:readpdf()
"     if (!executable("pdftotext"))
"         echo "Error: pdftotext not installed or not in path"
"         return
"     endif

"     let tmp = tempname()
"     " invoke: pdftotext sourcefile.pdf tempfile
"     call system ("pdftotext '" . escape (expand("<afile>"), "'") . "' " . tmp)
"     setlocal nobin
"     execute "silent '[-1r " . tmp
"     " clean up the temporary file
"     call delete(tmp)

"     " make the buffer unwritable: we don't want to clobber the PDF file!
"     set nowrite
" endfun

" autocmd BufReadPost,FileReadPost *.pdf call s:readpdf()

" Adding ability to read Man pages from vimrc
runtime! ftplugin/man.vim

" Setting the tmux pane name as vi file name
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window ". expand("%:p:."))


" Code for Vimux
function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

function! VimuxWf()
    call VimuxSendText("wf ")
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

"let g:VimuxWidth = "35" "default is 20
let g:VimuxOrientation = 'v'
let g:VimuxUseNearest = 1


function! VimuxSlimeGCC()
    call VimuxSendText()
    call VimuxSendKeys("Enter")
endfunction

" vimux vs send the paragraph
vnoremap <Leader>f "vy:call VimuxSlime()<CR>
" nmap <Leader>vs vip<Leader>vs<CR>
nnoremap <Leader>f V"vy:call VimuxSlime()<CR>j

vnoremap <leader>j "vy:call VimuxWf()<CR>
nnoremap <Leader>j V"vy:call VimuxWf()<CR>j

nmap <Leader>vm :VimuxRunCommand("make")<CR>
" map <C-j> <C-k>:VimuxRunCommand("clear; p; gcc " .bufname("%") ."; ./a.out; p")<CR>
" imap <C-j> <Esc><C-k>:VimuxRunCommand("p; gcc " .bufname("%") ."; ./a.out; p")<CR>i
" map <Leader>vc map <C-j> :!gcc -o %.out %; ./%.out<CR>

"
" make shift enter to run the current line and go to new line
" imap <S-CR> <Esc>"vyy:call VimuxSlime()<CR>ji
" imap <F5> <Esc>"vyy:call VimuxSlime()<CR>ji
nmap <F5> "vyy:call VimuxSlime()<CR>j
" vmux vs send the line
nmap <Leader>vv "vyy:call VimuxSlime()<CR>j
map <Leader>vr Bv$"vy:call VimuxSlime()<CR>
map <Leader>vv <Leader>w:VimuxRunCommand("run " .bufname("%"))<CR>
" map <Leader><Leader> ,w:VimuxRunCommand("rm ./Map; gcc Map.c -o Map -ansi ; ./Map")<CR>

" run the whole file
nmap <Leader>vr <Leader>w:VimuxRunCommand("run " .bufname("%"))<CR>
nmap <Leader>vf <Leader>w:VimuxRunCommand("run " .bufname("%"))<CR>
" vimux send the whole page (all)
nmap <Leader>va ggVG"vy:call VimuxSlime()<CR>
" vimux open 
nmap <Leader>vo :call VimuxOpenRunner()<CR>
" vimux close
nmap <Leader>vq :VimuxCloseRunner<CR>
" vimux inspect (transfer control to the vimux pane)
nmap <Leader>vg :VimuxInspectRunner<CR>
" vimux run previous command
nmap <Leader>vl :VimuxRunLastCommand<CR>
" nmap <Leader>vp :VimuxPromptCommand<CR>
nnoremap <leader><Enter> :VimuxPromptCommand<CR>

"settings for targets.vim
let g:targets_aiAI = 'aiAI'
let g:targets_nlNL = 'nlNL'
let g:targets_nlNL = 'nN  '
let g:targets_pairs = '()b {}B [] <>'
let g:targets_quotes = '" '' `'
let g:targets_quotes = '"d '' `'
let g:targets_separators = ', . ; : + - = ~ _ * # / | \ & $'
let g:targets_tagTrigger = 't'
let g:targets_argTrigger = 'a'
let g:targets_argOpening = '[([]'
let g:targets_argClosing = '[])]'
let g:targets_argSeparator = ','

" Persistent Undo
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" Automatically enter paste mode when pasting in terminal 
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
" settings for ultisnips
"
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"


" copy to buffer
" vmap <leader>y :w! ~/.vimbuffer<CR>
" nmap <leader>y :.w! ~/.vimbuffer<CR>
" paste from buffer
" map <leader>p :r ~/.vimbuffer<CR>

let maplocalleader = "\\"


"make the 's' and 'S' insert a single character
" nmap <silent> ,s "=nr2char(getchar())<cr>P
nnoremap <Leader>s :exec "normal i".nr2char(getchar())."\e"<CR>
" nnoremap s i_<Esc>r
" nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>

" map <Space> :noh<CR>
" hi CursorLine cterm=NONE ctermbg=black ctermfg=white guibg=darkblue guifg=white
" hi CursorLine gui=underline cterm=underline


" redirect g search output to scratch
command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a


" Truncate digits
" %s/\d\+\.\d\+/\=printf('%.2f',str2float(submatch(0)))/g
"
" Change the colors of the search higlight

" Resize the windows using keyboard shortcut
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" indent whole file
nnoremap <F7> mzgg=G`z

" mappings for org-mode
" let g:org_agenda_files=['~/org/*.org']

" nnoremap m ]m
" nnoremap M [m
map <tab> }
map <s-tab> {
        
" Capitalise first letter of every word
map <F9> :s/\v<(.)(\w*)/\u\1\L\2/g

" C-n as next buffer
" current not C-p as that is for CtrlP
nnoremap <C-n> :bnext<CR>
" nnoremap <leader>1 :bu 1<CR>
" nnoremap <leader>2 :bu 2<CR>
" nnoremap <leader>3 :bu 3<CR>
" nnoremap <leader>4 :bu 4<CR>
" nnoremap <leader>5 :bu 5<CR>
" nnoremap <leader>6 :bu 6<CR>
" nnoremap <leader>7 :bu 7<CR>
" nnoremap <leader>8 :bu 8<CR>
" nnoremap <leader>9 :bu 9<CR>
let g:buftabline_plug_max = 20
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>00 <Plug>BufTabLine.Go(10)
nmap <leader>01 <Plug>BufTabLine.Go(11)
nmap <leader>02 <Plug>BufTabLine.Go(12)
nmap <leader>03 <Plug>BufTabLine.Go(13)
nmap <leader>04 <Plug>BufTabLine.Go(14)
nmap <leader>05 <Plug>BufTabLine.Go(15)
nmap <leader>06 <Plug>BufTabLine.Go(16)
nmap <leader>07 <Plug>BufTabLine.Go(17)
nmap <leader>08 <Plug>BufTabLine.Go(18)
nmap <leader>09 <Plug>BufTabLine.Go(19)

map gn :bn<CR>
map gp :bp<CR>
" map gd :bd<CR> 
" map gb :ls<CR>:buffer<Space>
" map gb :buffer<Space>

" map <C-s> :w<CR>

" map <leader><leader> <C-w><C-w>


" vnoremap <leader>i c[<C-r>"]()<Esc>i
"
" vap doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" map q: :q
" map <leader>g gcc
" map <leader><Enter> za
" map <C-j> :w<CR>:VimuxRunCommand("run " .bufname("%"))<CR>
" imap <C-j> <Esc>:w<CR>:VimuxRunCommand("run " .bufname("%"))<CR>

" nmap <leader>j :up<CR>:VimuxRunCommand("run " .expand('%:p'))<CR>
 
nmap <leader>l :up<CR>:VimuxRunCommand("!! ")<CR>:VimuxRunCommand(" ")<CR>


" imap <C-g> <Plug>IMAP_JumpForward
nmap <C-g> <Plug>IMAP_JumpForward


" fixes the colors of the matching parenthesis/braces
" hi MatchParen cterm=underline ctermbg=white ctermfg=black
hi MatchParen cterm=none ctermbg=black ctermfg=grey

" let g:bufferline_echo = 0
" autocmd VimEnter *
" 	\ let &statusline='%{bufferline#refresh_status()}'
" 	  \ .bufferline#get_status_string()

Plugin 'christoomey/vim-tmux-navigator'

" map ! <leader>vp
" map <F3> <leader>vl

" Plugin 'kshenoy/vim-signature'


" Plugin 'rakr/vim-one'
" let g:airline_theme='one'
" colorscheme one
hi Search cterm=NONE ctermbg=lightblue ctermfg=black


" Plugin 'rhysd/vim-grammarous'
" let g:grammarous#show_first_error = 1

" set clipboard+=unnamedplus
set clipboard+=unnamed

nnoremap <silent> ,s "=nr2char(getchar())<cr>P

highlight Pmenu ctermbg=black ctermfg=white

Plugin 'Konfekt/FastFold'
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

set background=light
" set background=dark
" colorscheme solarized
" colorscheme Atelier_SulphurpoolDark
" colorscheme Atelier_SulphurpoolLight
" colorscheme solarized8_high
colorscheme Atelier_DuneDark

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


" vim-workspace
" let g:workspace_powerline_separators = 1
" let g:workspace_tab_icon = "#"
" function! g:WorkspaceSetCustomColors()
"   hi! WorkspaceBufferTruncDefault cterm=bold ctermbg=10 ctermfg=8 guibg=#999999 guifg=#000000
"   hi! WorkspaceIconDefault cterm=NONE ctermbg=5 ctermfg=10 guibg=#FF0000 guifg=#999999
"   highlight WorkspaceBufferCurrent ctermbg=green ctermfg=black guibg=green
"   highlight WorkspaceBufferActive ctermbg=darkgreen ctermfg=black guibg=darkgreen
"   highlight WorkspaceBufferHidden ctermbg=black ctermfg=white guibg=black
  " highlight WorkspaceTabHidden ctermbg=darkblue ctermfg=black guibg=darkblue
"   highlight WorkspaceTabCurrent ctermbg=blue ctermfg=white guibg=black
"   highlight WorkspaceFill ctermbg=black ctermfg=white guibg=black
" endfunction
map <leader>] <Plug>SpeedDatingUp
nnoremap <leader>d "_d
" nnoremap <leader>

" insert date/time
nnoremap <leader>t "=strftime("%c")<CR>P0i#<ESC>j
" inoremap <leader>t <C-R>=strftime("%c")<CR>
"
" Plugin 'python/black'

" Plugin 'Shougo/unite.vim'
" Plugin 'devjoe/vim-codequery'

set diffopt=filler,context:0

hi Comment guifg=#b0b0b0

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'alok/notational-fzf-vim'
let g:nv_search_paths = ['./notes.md', '~/notes/']
nnoremap <silent> <c-s> :NV<CR>

command! -complete=file -nargs=1 Remove :echo 'Remove: '.'<f-args>'.' '.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')

" let g:VimuxRunnerIndex=2
"
Plugin 'vimwiki/vimwiki'

" Insert a empty line and return to Normal Mode
" nmap <leader>o i_<Esc>r
nnoremap <silent><leader>b :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" https://vim.fandom.com/wiki/Redirect_g_search_output 
command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a

Plugin 'wincent/ferret'  " Search :Ack 

" nnoremap <leader>w :Ack <C-r><C-w> ~/ml-platform/pathai/ <CR>
nnoremap <leader>q : ~/ml-platform/pathai/ <C-b>Ack<space> 
" Ack (leader a)
" Lack (search but use location-list instead of quickfix-list
" Back (& Black) search in open buffers only
" Quack search the current files in the quickfix list
" Acks (leader r)
" Qargs put the quickfix files in the args

" Autosave on textchanged
" autocmd TextChanged,TextChangedI <buffer> write


Plugin 'wincent/loupe'
" <leader>n Clear


nnoremap <leader>c :e ~/ml-platform/pathai/



au BufRead,BufNewFile *.conf setfiletype config

" Make the command to get the UUID of the last run Jabba command
command! Uid r!tail -n 1 out | cut -d' ' -f 5
nmap <Leader>vu :Uid<CR>ysiW"kMx
command! Json %!python -m json.tool

command! -nargs=1 Sync ! mle sync % <q-args>:%

command! Lint ! pycodestyle --ignore=W503,E741,E402,E731,E722,E129 --max-line-length=120  %


"Vimwiki mappings
nmap <Leader>wj <Plug>VimwikiDiaryNextDay
nmap <Leader>wk <Plug>VimwikiDiaryPrevDay

nmap <Leader>wv <Plug>VimwikiToggleListItem
nmap <Leader>wu <Plug>VimwikiDiaryGenerateLinks
nmap <Leader>wo <Plug>VimwikiMakeDiaryNote

" nnoremap <Leader>" ysiw"

set completeopt-=menuone   " show the popup menu even when there is only 1 match
set completeopt-=noinsert  " don't insert any text until user chooses a match
set completeopt+=longest   " don't insert the longest common text
set completeopt+=preview

highlight PmenuSel ctermbg=LightYellow guibg=LightYellow

Plugin 'Valodim/vim-zsh-completion'


Plugin 'wellle/tmux-complete.vim'



set nohls
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=green guifg=white
" hi CursorLine   cterm=NONE ctermbg=lightblue ctermfg=black guibg=lightblue guifg=black

"#########colorscheme Atelier_CaveLight
hi Search ctermbg=LightYellow
"hi Search ctermfg=Red
"

" Coc.nvim insertsions
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
      " \ pumvisible() ? "\<C-n>" :
      " \ <SID>check_back_space() ? "\<TAB>" :
      " \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
" if exists('*complete_info')
  " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
  " inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight') 


nnoremap <leader>y :!mle sync % mrcp2:extra/% <CR>

hi Search    gui=NONE guifg=black guibg=red
hi IncSearch gui=NONE guifg=black guibg=yellow

Plugin 'Tumbler/highlightMarks'
let g:highlightMarks_cterm_colors = [255, 255, 0, 0, 0]


" map Ctrl V to paste for the nvim error
map <C-V>       "+gP

" tabline bufline colors
hi TabLine    gui=NONE guibg=#3e4452 guifg=#abb2bf    cterm=NONE term=NONE ctermfg=black ctermbg=white

