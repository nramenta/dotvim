" MacVim specific

" have the mouse enabled all the time
  set mouse=a

" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T
  set guioptions-=m

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" set default font
  set guifont=Inconsolata-dz\ for\ Powerline:h12

" initial window size
  set lines=45 columns=120

" pretty but not terminal-compatible color scheme
  colorscheme codeschool

" don't blink the cursor
  set guicursor=a:blinkon0

" Go to tab by number
  noremap <D-1> 1gt
  noremap <D-2> 2gt
  noremap <D-3> 3gt
  noremap <D-4> 4gt

" map CMD + i to Esc
  inoremap <D-i> <Esc>
  cnoremap <D-i> <Esc>

" map CMD + [ to go to the previous buffer
  nnoremap <D-[> :bprevious<CR>

" map CMD + ] to go to the next buffer
  nnoremap <D-]> :bnext<CR>

" map CMD + Backspace to delete the current buffer
  nnoremap <D-BS> :bd!<CR>
