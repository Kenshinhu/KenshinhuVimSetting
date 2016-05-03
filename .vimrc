set expandtab "使用 expandtab 來插入空白鍵(Space)取代 Tab:
set tabstop=4 "控制插入 Tab 時所需要的空白鍵(Tab)字元數，例如用4個空白鍵取代 Tab:
set shiftwidth=4 "針對程式縮排所需要的 Space 個數，我們可以使用 shiftwidth 選項
set linespace=3 "设置行与行之间的是间距

set backspace=2

set laststatus=2

set number

set guifont=Anonymous_Pro_for_Powerline:h18

:syntax enable


au BufNewFile,BufRead *.ejs set filetype=html

colorscheme molokai " 指定样式

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'briancollins/vim-jst'
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
Plugin 'Valloric/YouCompleteMe'

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


" YouCompleteMe 配置
set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"回车即选中当前项
inoremap <expr> <CR>pumvisible()? "\<C-y>":"\<CR>"	

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
