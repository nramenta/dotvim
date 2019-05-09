" load plugins
  runtime! plugins.vim

" ### GENERAL ###

" colorscheme
  set t_Co=256
  let g:solarized_termcolors=256
  set background=dark
  colorscheme solarized

" required for several plugins
  set nocompatible

" enable syntax highlighting
  syntax on

" don't wrap long lines
  set nowrap

" show commands as we type them
  set showcmd

" highlight matching brackets
  set showmatch

" scroll the window when we get near the edge
  set scrolloff=4 sidescrolloff=10

" use 4 spaces for tabs
  set expandtab tabstop=4 softtabstop=4 shiftwidth=4 smarttab

" enable line numbers, and don't make them any wider than necessary
  set number numberwidth=2 relativenumber

" show the first match as search strings are typed
  set incsearch

" highlight the search matches
  set hlsearch

" searching is case insensitive when all lowercase
  set ignorecase smartcase

" assume the /g flag on substitutions to replace all matches in a line
  set gdefault

" set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

" pick up external file modifications
  set autoread

" don't abandon buffers when unloading
  set hidden

" set utf8 as standard encoding
  set encoding=utf8

" set unix as standard filetype
  set ffs=unix

" match indentation of previous line
  set autoindent

" perform autoindenting based on filetype plugin
  filetype plugin indent on

" highlight current line
  set cursorline

" show current line info (current/total)
  set ruler rulerformat=%=%l/%L

" show status line
  set laststatus=2

" when lines are cropped at the screen bottom, show as much as possible
  set display=lastline

" flip the default split directions to sane ones
  set splitright splitbelow

" don't beep for errors
  set visualbell

" make backspace work in insert mode
  set backspace=indent,eol,start

" highlight trailing whitespace
  set listchars=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:+ list

" use tab-complete to see a list of possiblities when entering commands
  set wildmode=list:longest,full

" allow lots of tabs
  set tabpagemax=20

" remember last position in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Thorfile, Rakefile, Vagrantfile, and Gemfile are Ruby
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" JSON is JS
  au BufNewFile,BufRead *.json set ai filetype=javascript

" for git, add spell checking and automatic wrapping at 72 columns
  autocmd Filetype gitcommit setlocal spell textwidth=72

" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
  function! <SID>StripTrailingWhitespaces()
      " Preparation: save last search, and cursor position.
      let _s=@/
      let l = line(".")
      let c = col(".")
      " Do the business:
      %s/\s\+$//e
      " Clean up: restore previous search history, and cursor position
      let @/=_s
      call cursor(l, c)
  endfunction
  command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()
  autocmd BufWritePre <buffer> call <SID>StripTrailingWhitespaces()

" fast update
  set updatetime=100

" ### MAPPING ###

" easy wrap toggling
  nmap <Leader>w :set wrap!<cr>
  nmap <Leader>W :set nowrap<cr>

" shortcut to save all
  nmap <Leader>ss :wa<cr>

" close all other windows (in the current tab)
  nmap gW :only<cr>

" go to the alternate file (previous buffer) with g-enter
  nmap g 

" insert blank lines without going into insert mode
  nmap go o<esc>
  nmap gO O<esc>

" mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

" select the lines which were just pasted
  nnoremap vv `[V`]

" clean up trailing whitespace
  map <Leader>c :StripTrailingWhitespaces<cr>

" compress excess whitespace on current line
  map <Leader>e :s/\v(\S+)\s+/\1 /<cr>:nohl<cr>

" delete all buffers
  map <Leader>d :bufdo bd<cr>

" map spacebar to clear search highlight
  nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
  nnoremap <S-Up> <c-w>+
  nnoremap <S-Down> <c-w>-
  nnoremap <S-Left> <c-w>>
  nnoremap <S-Right> <c-w><

" reindent the entire file
  map <Leader>I gg=G``<cr>

" insert the path of currently edited file into a command
" Command mode: Ctrl-P
  cmap <C-S-P> <C-R>=expand("%:p") <cr>
