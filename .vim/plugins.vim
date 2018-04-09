call plug#begin('~/.vim/plugged')

" seoul256 color scheme
  Plug 'junegunn/seoul256.vim'
  colorscheme seoul256

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

" CtrlP
  Plug 'kien/ctrlp.vim'
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>
    nnoremap <C-p> :<C-U>CtrlP<CR>

    " respect the .gitignore
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    let g:ctrlp_switch_buffer = '0' " Dont jump me to already open file in another buffer; let me have mulitple copies

" Tagbar for navigation by tags using CTags
  Plug 'majutsushi/tagbar'
    let g:tagbar_autofocus = 1
    map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
    map <Leader>. :TagbarToggle<CR>

" AG aka The Silver Searcher
  Plug 'rking/ag.vim'
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>

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

" Syntastic for catching syntax errors on save
  Plug 'scrooloose/syntastic'
    let g:syntastic_enable_signs=1
    let g:syntastic_quiet_messages = {'level': 'warning'}
    " syntastic is too slow for haml and sass
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': ['haml','scss','sass'] }

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
