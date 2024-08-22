set nocompatible              " 去除VI一致性,必须要添加
set runtimepath^=~/.vim/bundle/nerdtree
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim-scripts 中的插件 "
"Plugin 'taglist.vim'
"ctags 配置:F3快捷键显示程序中的各种tags，包括变量和函数等。
"map <F3> :TlistToggle<CR>
"let Tlist_Use_Right_Window=1
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_WinWidt=25

"Plugin 'The-NERD-tree'
"NERDTree 配置:F2快捷键显示当前目录树
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=50
let NERDTreeShowHidden=1

call vundle#end()

" set autoindent
" set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 用空格代替制表符
set expandtab
synta on "自动语法高亮
" set mouse=a  "开启鼠标模式
set hlsearch " highlight search word
" set term=builtin_ansi " 使用上下左右
