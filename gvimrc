set vb t_vb=

set guioptions-=r
set guioptions-=L
set guioptions-=T
set guioptions-=m

set columns=224
set lines=64

set linespace=0
set guifont=Menlo\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h13

if has('gui_macvim')
  macmenu Edit.Find.Find\ Next key=<nop>
endif
