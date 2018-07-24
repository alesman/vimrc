"pfix colors in ubuntu
set background=dark
set t_Co=256
colorscheme wombat256mod

" package manager
execute pathogen#infect()


"syntax enable
"let g:solarized_termcolors=16
"set t_Co=16
"set background=dark
"colorscheme solarized

" experimental stuff:
" statusline things
" show statusline always - even without splits
set laststatus=2
"define 3 custom highlight groups
"http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
"http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
"http://www.plainlystated.com/2009/05/vim-statusline/

"hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
"hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
"hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green

"set statusline+=%=   "left-right splitter
"set statusline+=%*   "switch back to statusline highlight

set statusline=
"set statusline+=%1*  "switch to User1 highlight
set statusline+=%F   "full filename
"set statusline+=%2*  "switch to User2 highlight
set statusline+=\     "space
set statusline+=%y   "filetype
"set statusline+=%3*  "switch to User3 highlight
set statusline+=\     "space
set statusline+=[%l\/%L]   "line number
set statusline+=:%c  "Colnr
set statusline+=\     "space
"set statusline+=%P   "percentage thru file

" yp to copy current file path to unnamed buffer
nmap yp :let @" = expand("%:p")<CR>

" attempt at a good reload all, not very good
nmap <Leader>e :bufdo e<CR>:syntax on<CR>
nmap <Leader>s :syntax on<CR>

" turns on the mouse? wtf?
"set mouse=a
" enter for newline w/out insert, <S-CR> does not work :(
"nmap <CR> o<Esc>
"nmap <S-CR> O<Esc>
map Q @q

" set leader key to space -> easiest key to hit!
let mapleader=" "

"quick escape
imap jj <Esc>
" quick save and quit in insert mode
imap ZZ <Esc>:wq<CR>
" imap QQ <Esc>:bd<CR> " why would I need this?

"quick save, force save, save all, save all and quit
nmap <Leader>w :w<CR>
nmap <Leader>W :w!<CR>
nmap <Leader>a :wa<CR>
nmap ZA :wqa<CR>

" delete the buffer
nmap <Leader>q :bd<CR>
" close the window
nmap <Leader>Q :q<CR>
" close all windows
" nmap QQ :qa<CR> " maybe reinstate?

" toggle numbers and paste mode
nmap <Leader>n :set number!<CR>
nmap <Leader>p :set paste!<CR>:set paste?<CR>

"correct Y behavior (yank to EOL like C or D)
nmap Y y$

" treat wrapped lines as multiple lines
nnoremap j gj
nnoremap k gk

" clear search hilight
nmap <silent> <Leader>/ :nohlsearch<CR>

" fast tabbing - there may have been some reason I didn't want this?
nmap < <<
nmap > >>
" tabbing in visual mode
vnoremap < <gv
vnoremap > >gv

" visual block without pasting
nnoremap <M-v> <C-v>

" fast scroll
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

"browse buffers nmap <Leader>b :ls<CR>:b

"intuitive folding
nmap zj zR
nmap zk zM
nmap zl zO
nmap zh zc
nmap zH zC

" tab navigation like firefox
:nmap <C-S-tab> :tabprevious<CR>
:nmap <C-tab> :tabnext<CR>
:nmap <C-t> :tabnew<CR>

" change windows
map <silent> <C-k> :wincmd k<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-h> :wincmd h<CR>
map <silent> <C-l> :wincmd l<CR>
imap <silent> <C-k> <Esc>:wincmd k<CR>
imap <silent> <C-j> <Esc>:wincmd j<CR>
imap <silent> <C-h> <Esc>:wincmd h<CR>
imap <silent> <C-l> <Esc>:wincmd l<CR>

" new frame from window nmap <C-w>h :topleft  vnew<CR>
map <C-w>h :topleft vnew<CR>
map <C-w>l :botright vnew<CR>
map <C-w>k :topleft  new<CR>
map <C-w>j :botright new<CR>
imap <C-w>h <Esc>:topleft vnew<CR>
imap <C-w>l <Esc>:botright vnew<CR>
imap <C-w>k <Esc>:topleft  new<CR>
imap <C-w>j <Esc>:botright new<CR>

" new frame from frame
map <C-f>h :leftabove  vnew<CR>
map <C-f>l :rightbelow vnew<CR>
map <C-f>k :leftabove  new<CR>
map <C-f>j :rightbelow new<CR>
imap <C-f>h <Esc>:leftabove  vnew<CR>
imap <C-f>l <Esc>:rightbelow vnew<CR>
imap <C-f>k <Esc>:leftabove  new<CR>
imap <C-f>j <Esc>:rightbelow new<CR>

" resize splits
nnoremap <silent> <C-Right> <C-w>2>
nnoremap <silent> <C-Left> <C-w>2<lt>
nnoremap <silent> <C-Up> <C-w>2-
nnoremap <silent> <C-Down> <C-w>2+
" resize splits faster
nnoremap <silent> <C-S-Right> <C-w>20>
nnoremap <silent> <C-S-Left> <C-w>20<lt>
nnoremap <silent> <C-S-Up> <C-w>20-
nnoremap <silent> <C-S-Down> <C-w>20+

" netrw
nmap <Leader>o :o .<CR>

" fixes for browser based ssh
:nmap <Leader>t :tabnew<CR>
:nmap <Leader>h :tabprevious<CR>
:nmap <Leader>l :tabnext<CR>

:nmap <C-f>= <C-w>=
:imap <C-,> <C-n>

"general
set hidden
set history=1000
set virtualedit=onemore
set nospell

"ui
set guifont=Consolas:h9:cANSI
set showmode

set ruler
set number
set showmatch

" searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" navigation
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=5
set scrolloff=3
set gdefault

" tab formatting
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab
set tabstop=4
set autoindent

" syntax and folding
syntax enable
set pastetoggle=<F12>
set foldmethod=indent
set foldignore=

" make folds match wombat256mod bg color
hi Folded ctermbg=234

"remove goddamn motha-fuckin scrollbars
:setglobal guioptions-=L
:setglobal guioptions-=l
:setglobal guioptions-=R
:setglobal guioptions-=r
:setglobal guioptions-=b
:setglobal guioptions-=h
"remove motha truckin toolbar
:setglobal guioptions-=T

" Remove trailing whitespace (on write)
" autocmd BufWritePre * :%s/\s\+$//e
function! EraseTrailingWhiteSpace()
  if search('\s\+$', 'nw') != 0
    %s/\s\+$//e
    normal!``
  endif
endfunction
autocmd BufWritePre * :call EraseTrailingWhiteSpace()

" correctly interpret file types
au BufNewFile,BufRead *.pde set filetype=c
au BufNewFile,BufRead *.ino set filetype=c
au BufNewFile,BufRead *.pic set filetype=ibasic
au BufNewFile,BufRead *.bas set filetype=ibasic
au BufNewFile,BufRead *.pbp set filetype=ibasic
au BufNewFile,BufRead *.html set filetype=htmldjango

" PLUGIN SPECIFIC
nmap <Leader>cp :ConqueTerm python<CR>
nmap <Leader>cb :ConqueTerm bash<CR>

let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1
" see conque term split?
" note I did dirty stuff inside ConqueTerm for <C-hjkl> to work

" language specific
"au FileType python set foldmethod=indent
"au FileType python set foldignore=

" WINDOWS SPECIFIC
" correctly format paths in windows
autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
"save and run current file as python script
nmap <Leader>rp :w<CR>:silent !start cmd /k python %<CR>:redraw!<CR>

"save and run in haskell interpreter
nmap <Leader>rh :w<CR>:silent !gnome-terminal -e "bash -ic 'ghci %:p'" <CR>:redraw!<CR>

"save and run in node repl
nmap <Leader>rn :w<CR>:silent !gnome-terminal -e "bash -ic '(echo -e \"require(\\\"util\\\").inspect.defaultOptions.depth = null;\n .load %:p\" && cat) \| node -i'" <CR>:redraw!<CR>
"nmap <Leader>rn :w<CR>:silent !gnome-terminal -e "bash -ic '(echo -e \".load %:p\" && cat) \| node -i'" <CR>:redraw!<CR>



" LINUX SPECIFIC
"save and run current file as python script
"nmap <Leader><Leader> :%
"nmap <Leader>rc :w<CR>:ConqueTermVSplit bash -ic 'source ~/bootledger/venv/bin/activate; python -i %'<CR>



nmap <Leader>rm :w<CR>:silent !gnome-terminal -e "bash -ic 'cd ~/data-layer/src/main/python/; source ../../../target/python-staging/venv/bin/activate; source ~/dev_env_config_env_vars.sh; python -i -m %:p:r;'" <CR>:redraw!<CR>

nmap <Leader>rm :w<CR>:silent !gnome-terminal -e "bash -ic 'cd ~/data-layer/src/main/python/; source ~/dev_env_config_env_vars.sh; python -i -m %:p:r;'" <CR>:redraw!<CR>
nmap <Leader>rbp :w<CR>:silent !gnome-terminal -e "bash -ic 'cd ~/data-layer/src/main/python/; source ~/prod_env_vars.sh; python -i -m %:p:r;'" <CR>:redraw!<CR>

nmap <Leader>rt :w<CR>:silent !gnome-terminal -e "bash -ic 'cd ~/data-layer/src/main/python/; source ../../../target/python-staging/venv/bin/activate; source ~/dev_env_config_env_vars.sh; SKIP_PLATFORM_DEPENDENT_TESTS=TRUE python -i -m unittest discover -s tests;'" <CR>:redraw!<CR>

nmap <Leader>rc :w<CR>:silent !gnome-terminal -e "bash -ic 'cd ~/bevcloud; source venv/bin/activate; python -i -m %:p:r;'" <CR>:redraw!<CR>

nmap <Leader>fc :w<CR>:silent !cat % \| xclip -i -selection cliploard; <CR>:redraw!<CR>

" grep under cursor
"nmap <Leader>g "zyiwGA<CR>~~~~~~~~~~~~~~~~<CR>GREP - <ESC>"zp:lcd ~/data-layer<CR>:silent read !git grep <C-r>z<CR> :redraw!<CR>A<CR><ESC>

" yank in word to z register, cd to data layer, grep for z register, store result to default paste register
nmap <Leader>g "zyiw:lcd ~/data-layer<CR>:let @" = "\nGREP - ".@z."\n".system("git grep \"<C-r>z\"")<CR>
" cd to data layer, grep for '/' register (which contains current search term), store result to default paste register
nmap <Leader>G :lcd ~/data-layer<CR>:     let @" = "\nGREP - ".@/."\n".system("git grep \"<C-r>/\"")<CR>


" open file name under cursor...
nmap <Leader>fo B"zyt::leftabove  vnew<CR>:e ~/data-layer/<C-r>z<CR>
