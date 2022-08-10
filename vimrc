set encoding=utf-8

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'frazrepo/vim-rainbow'
Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/tyrannicaltoucan/vim-quantum.git'
call plug#end() 

au FileType c,cpp,objc,objcpp,py,java call rainbow#load()
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle


" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

map <C-n> :NERDTreeToggle<CR>

map <F4> :ter <CR> 
tnoremap <F4> <C-W>:quit! <CR>

inoremap ( ()<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
inoremap {{ {}<ESC>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

"c-z 返回上一步
inoremap <C-Z> <C-C> :u <CR> i

"貼上系統剪貼
inoremap <C-V> <ESC>"+p

inoremap <C-H> <Left>
inoremap <C-L> <Right>
inoremap <C-K> <Up>
inoremap <C-J> <Down>
inoremap <C-D> <DEL>


nnoremap <C-Z> <Nop>

map <F5> :call CompileAndRun()<CR>
func! CompileAndRun()
    exec "w"
    if &filetype == 'c'
        exec "!gcc -std=c11 -lpthread % -o a.out && a.out " 
    elseif &filetype == 'cpp'
        exec "!g++ -std=c++11 % -o a.out && a.out -lpthread" 
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'sh'
        :!%
    elseif &filetype == 'python'
        exec "!python %"
    endif
endfunc

set nocompatible
set backspace=indent,eol,start

set encoding=utf8
set fileencodings=utf8
set fdm=indent
set noai nosi 
"colorscheme dracula
"let g:molokai_original = 1
set number 
set background=dark
set termguicolors
let g:quantum_black=1
colorscheme quantum

set hlsearch 
set tabstop=2
set shiftwidth=0 
set laststatus=2
set expandtab
set wrap
set autowrite
set noautoindent 
set noswapfile
set cursorline

" 突出显示当前列
set cursorcolumn
" 突出显示当前行
set cursorline


" 左下角显示当前vim模式
set showmode









