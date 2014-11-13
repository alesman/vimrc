" ENVIRONMENT SPECIFIC "

" fix colors in ubuntu
set t_Co=256

" EXPERIMENTAL STUFF "

" attempt at a good reload all
nmap <Leader>e :bufdo e<CR>:syntax on<CR>
nmap <Leader>s :syntax on<CR>


" turns on the mouse? wtf?
"set mouse=a

" MAPPINGS "

" set leader key to space -> easiest key to hit!
let mapleader=" " 

" quick escape 
imap jj <Esc>
" quick save and quit in insert mode
imap ZZ <Esc>:wq<CR>

" quick save, force save, save all, save all and quit
nmap <Leader>w :w<CR>
nmap <Leader>W :w!<CR>
nmap <Leader>a :wa<CR>
nmap ZA :wqa<CR>

" delete the buffer
nmap <Leader>q :bd<CR>
" close the window
nmap <Leader>Q :q<CR>
" close all windows
nmap <Leader>QA :qa<CR>

" netrw
nmap <Leader>o :o .<CR>

" browse buffers
nmap <Leader>b :ls<CR>:b 


" toggle numbers and paste mode
nmap <Leader>n :set number!<CR>
nmap <Leader>p :set paste!<CR>:set paste?<CR>

"correct Y behavior (yank to EOL like C or D)
nmap Y y$

" treat wrapped lines as multiple lines
nnoremap j gj
nnoremap k gk

" fast scroll
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

" intuitive folding
nmap zl zO 
nmap zh zC
"maybe some intuitive min/reload all?

" clear search hilight
nmap <silent> <Leader>/ :nohlsearch<CR>

" fixes tabbing in visual mode
vnoremap < <gv
vnoremap > >gv



" tab navigation like firefox
:nmap <C-S-tab> :tabprevious<CR>
:nmap <C-tab> :tabnext<CR>
:nmap <C-t> :tabnew<CR>

" change windows
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" new frame from window
nmap <C-w>h :topleft  vnew<CR>
nmap <C-w>l :botright vnew<CR>
nmap <C-w>k :topleft  new<CR>
nmap <C-w>j :botright new<CR>

" new frame from frame
nmap <C-f>h :leftabove  vnew<CR>
nmap <C-f>l :rightbelow vnew<CR>
nmap <C-f>k :leftabove  new<CR>
nmap <C-f>j :rightbelow new<CR>

" resize windows
nnoremap <silent> <C-Right> <C-w>><C-w>>
nnoremap <silent> <C-Left> <C-w><lt><C-w><lt>
nnoremap <silent> <C-Up> <C-w>-
nnoremap <silent> <C-Down> <C-w>+


" REPLACEMENTS FOR BROWSER-BASED SSH "
:nmap <Leader>t :tabnew<CR>
:nmap <Leader>h :tabprevious<CR>
:nmap <Leader>l :tabnext<CR>

" equal-size windows
:nmap <C-f>= <C-w>=
" auto-complete
:imap <C-,> <C-n>

" visual block without pasting
nnoremap <M-v> <C-v>


" SETTINGS "

"general
set hidden
set history=1000
set virtualedit=onemore
set nospell

"ui
set background=dark
colorscheme wombat256mod
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
set foldmethod=syntax

"remove goddamn scrollbars
:setglobal guioptions-=L
:setglobal guioptions-=l
:setglobal guioptions-=R
:setglobal guioptions-=r
:setglobal guioptions-=b
:setglobal guioptions-=h
" I'm tired of these monkey fighting toolbars on this monday friday GUI
:setglobal guioptions-=T

" correctly interpret some file types
au BufNewFile,BufRead *.pde set filetype=c
au BufNewFile,BufRead *.ino set filetype=c
au BufNewFile,BufRead *.pic set filetype=ibasic
au BufNewFile,BufRead *.bas set filetype=ibasic
au BufNewFile,BufRead *.pbp set filetype=ibasic

" WINDOWS SPECIFIC
" correctly format paths in windows
autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
"save and run current file as python script
nmap <Leader>rp :w<CR>:silent !start cmd /k python %<CR>:redraw!<CR>

" LINUX SPECIFIC
"save and run current file as python script in a new window with the VENV sourced
nmap <Leader>rp :w<CR>:silent !gnome-terminal -e "bash -ic 'source ~/bootledger/venv/bin/activate; python -i %'" <CR>:redraw!<CR>
