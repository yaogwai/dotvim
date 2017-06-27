set vb t_vb=

set guioptions-=r
set guioptions-=L
set guioptions-=T
set guioptions-=m

set columns=218
set lines=64

if has('gui_macvim')
  set guifont=Menlo\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h13
  macmenu Edit.Find.Find\ Next key=<nop>
  macmenu Edit.Paste key=<nop>
  macmenu File.Print key=<nop>
endif
