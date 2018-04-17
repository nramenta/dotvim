call plug#begin('~/.vim/plugged')

" Vim airline configs
  Plug 'bling/vim-airline'
  let g:airline_powerline_fonts = 1

" NERDTree for project drawer
  Plug 'scrooloose/nerdtree'
    let NERDTreeHijackNetrw = 0
    let NERDTreeIgnore = ['\.pyc$']
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>

" NERDTree Plugin
  Plug 'Xuyuanp/nerdtree-git-plugin'

" GitGutter
  Plug 'airblade/vim-gitgutter'

" A super simple, super minimal, super light-weight tab-completion plugin for Vim
  Plug 'ajh17/vimcompletesme'
    let g:vcm_omni_pattern = '\k\+\(\.\|->\|::\|_\)\k*$'

" Surround for adding surround 'physics'
  Plug 'tpope/vim-surround'

" MultipleCursor
  Plug 'terryma/vim-multiple-cursors'

" File-type sensible comments
  Plug 'tomtom/tcomment_vim'

" Command-T
  Plug 'wincent/command-t'
  let g:CommandTFileScanner = 'git'

" Support for ripgrep
  Plug 'jremmen/vim-ripgrep'

call plug#end()
