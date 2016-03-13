set expandtab "使用 expandtab 來插入空白鍵(Space)取代 Tab:
set tabstop=4 "控制插入 Tab 時所需要的空白鍵(Tab)字元數，例如用4個空白鍵取代 Tab:
set shiftwidth=4 "針對程式縮排所需要的 Space 個數，我們可以使用 shiftwidth 選項
set linespace=3 "设置行与行之间的是间距

set backspace=2

set laststatus=2

set number

set guifont=Anonymous_Pro_for_Powerline:h18

:syntax enable


colorscheme molokai " 指定样式

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'pangloss/vim-javascript'
Plugin 'gkz/vim-ls'
Plugin 'flazz/vim-colorschemes'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ervandew/screen'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

:nmap <D::> <ESC>

:map! <D-/> <ESC> v <leader>c<space> a 
" Insert模式下 增加/取消注释

:nmap <D-[> :tabp <CR>
" cmd+[ 键 切换tab上一个tab

:nmap <D-]> :tabn <CR>
" cmd+] 键 切换下一个tab

:nmap <F3> :NERDTreeTabsToggle <CR>
" 显示/隐藏 侧边的文件列表

:map! <D-s> :w!<CR> 
":快速保存


let NERDTreeShowBookmarks=1 " 开启vim时,显示NERDBookMarks

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=4



" 文件类型
filetype plugin indent on
