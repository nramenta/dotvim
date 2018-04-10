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

" CtrlP
  Plug 'ctrlpvim/ctrlp.vim'
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>
    nnoremap <C-p> :<C-U>CtrlP<CR>
    " respect .gitignore
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    let g:ctrlp_switch_buffer = '0' " Dont jump me to already open file in another buffer; let me have multiple copies

call plug#end()
