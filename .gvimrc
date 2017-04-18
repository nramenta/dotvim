" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T
  set guioptions-=m

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" go full screen like you mean it
  set fuoptions=maxvert,maxhorz

" set default font
  set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h12

" initial window size
  set lines=45 columns=120

" pretty but not terminal-compatible color scheme
  colorscheme codeschool

" Go to tab by number
  noremap <D-1> 1gt
  noremap <D-2> 2gt
  noremap <D-3> 3gt
  noremap <D-4> 4gt
