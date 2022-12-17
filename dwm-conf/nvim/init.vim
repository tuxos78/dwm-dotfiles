:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

":set guifont=<FONT_NAME> <FONT_SIZE>
:set guifont=DroidSansMono\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()


" Показывать скрытые файлы и папки в NERDTree  
let NERDTreeShowHidden = 1
" F6 для запуска и свертывания
noremap <F6> :NERDTreeRefreshRoot<CR> :NERDTreeToggle<CR>   


