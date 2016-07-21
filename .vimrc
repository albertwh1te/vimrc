" mark white personal vim configfile (vimrc it is)
set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
execute pathogen#infect()

" Bundle
Bundle 'gmarik/vundle'

Bundle 'L9'

Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/nerdtree'

Bundle  'ervandew/supertab'

Bundle 'maksimr/vim-jsbeautify'

Bundle  'Valloric/YouCompleteMe'

" Bundle 'Shougo/neocomplete.vim'

Bundle 'ctrlpvim/ctrlp.vim'

Bundle 'ihacklog/HiCursorWords'

Bundle 'scrooloose/syntastic'

" Bundle 'nvie/vim-flake8'

" Plugin
Plugin 'hynek/vim-python-pep8-indent'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-scripts/taglist.vim'

Plugin 'tell-k/vim-autopep8'

Plugin 'easymotion/vim-easymotion'
" End of vundle
call vundle#end()

" filetype finder
filetype on            " enables filetype detection

filetype plugin on     " enables filetype specific plugins

filetype plugin indent on

" Use smartcase.
"
" let g:neocomplete#enable_smart_case = 1
"
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
syntax enable
"
syntax on
"
" Nerdtree
map <C-n> :NERDTreeToggle<CR>
" Show line number
set number
" Solarized theme
let g:solarized_termcolors= 32
set background=light
" colorscheme solarized
" set t_Co=32
set term=screen-256color
" Airline
set laststatus=2
let g:airline#extensions#whitespace#checks = ['long']
" let g:airline_theme='solarized'
let g:airline_theme='wombat'
" nerdcommenter
let g:NERDSpaceDelims=1
" jsbeautify
"map <c-f> :call JsBeautify()<cr>
"" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" " for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" " for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" " for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" you complete me
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1
" taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags-exuberant' 
" let Tlist_Auto_Open = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
"use F3 start taglist
nnoremap <F3> :TlistToggle<CR>
" set high light the search 
set hlsearch
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

