
" 基本設定
set nocompatible
syntax on
set number
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent
set showcmd
set cursorline

" 検索設定
set ignorecase
set smartcase
set incsearch
set hlsearch

" 表示設定
set nowrap
set ruler
set showmode

" ファイル管理設定
set nobackup
set nowritebackup
set noswapfile

" C言語の設定
autocmd FileType c setlocal cinoptions=(0
autocmd FileType c setlocal formatoptions=croql
autocmd FileType c setlocal comments=s1:/*,mb:*,ex:*/,://

" コンパイルと実行のマッピング
nnoremap <F5> :w<CR>:!gcc % -o %:r && (./%:r; echo -n "Press Enter to continue..."; read line)<CR>

" ワイルドメニューとバックスペースの設定
set wildmenu
set backspace=indent,eol,start

" C言語の雛形を挿入
autocmd BufNewFile *.c exec ":Stdheader" | exec "normal o\nint\tmain(int argc, char *argv[])\n{\n\t\n}\n"

" vim-plugを初期化
call plug#begin('~/.vim/plugged')

" プラグインのリスト
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdtree'          " ファイルツリー表示
Plug 'vim-airline/vim-airline'     " ステータスラインの改善
Plug 'scrooloose/nerdcommenter'    " コードコメントの管理

" vim-plugの終了
call plug#end()

" 42headerの設定
let g:user42 = 'ywakamy'
let g:mail42 = 'wakamiya626@gmail.com'