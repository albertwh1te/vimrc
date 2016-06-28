" mark white personal vim configfile (vimrc it is)
set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
" Bundle
Bundle 'gmarik/vundle'

Bundle 'L9'

Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/nerdtree'

Bundle 'kevinw/pyflakes-vim'

Bundle  'ervandew/supertab'

Bundle 'maksimr/vim-jsbeautify'

Bundle  'Valloric/YouCompleteMe'

" Bundle 'Shougo/neocomplete.vim'

Bundle 'ctrlpvim/ctrlp.vim'

" Plugin
Plugin 'hynek/vim-python-pep8-indent'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdcommenter'

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



