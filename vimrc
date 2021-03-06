" ---------- GENERAL PREFERENCES ---------- "
set rnu
set ve+=onemore
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[5 q"  " default cursor (usually blinking block) otherwise


" ---------- VUNDLE ---------- "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on
" use mouse in normal and visual mode
set mouse=nv
Plugin 'tomtom/tcomment_vim'
Plugin 'valloric/youcompleteme'


" ---------- WSL YANK SUPPORT ---------- "
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

" ---------- CTAGS IN .GIT ------------ "
set tagrelative
set tags^=.git/tags;~

set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4


