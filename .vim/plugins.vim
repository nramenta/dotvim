call plug#begin('~/.vim/plugged')

" seoul256 color scheme
  Plug 'junegunn/seoul256.vim'

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

" Git wrapper
  Plug 'tpope/vim-fugitive'

" A super simple, super minimal, super light-weight tab-completion plugin for Vim
  Plug 'ajh17/vimcompletesme'
    let g:vcm_omni_pattern = '\k\+\(\.\|->\|::\|_\)\k*$'

" Surround for adding surround 'physics'
  Plug 'tpope/vim-surround'

" MultipleCursor
  Plug 'terryma/vim-multiple-cursors'

" File-type sensible comments
  Plug 'tomtom/tcomment_vim'

" Vimwiki
  Plug 'vimwiki/vimwiki'

" ### FILE TYPES ###

" Markdown syntax highlighting
  Plug 'tpope/vim-markdown'
    augroup mkd
      autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    augroup END

" Markdown preview to quickly preview markdown files
  map <buffer> <Leader>mp :Mm<CR>

call plug#end()
