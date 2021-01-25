call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround' 
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'preservim/nerdcommenter'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim'
call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set autoread
set clipboard=unnamed
set number
set rnu
"set tabstop=4 expandtab shiftwidth=4 smarttab
nnoremap <leader>lm :set bg=light <CR>
nnoremap <leader>dm :set bg=dark <CR>
nnoremap <leader>R :checktime <CR>
nnoremap <C-S-Z> :qa! <CR>
nnoremap <S-Z><S-A> :qa <CR>
nnoremap <S-Z>a :wqa <CR>
nmap + <C-W>+
nnoremap - <C-W>-
nnoremap < <C-W><
nnoremap > <C-W>>
:nmap cp :let @+ = expand("%")<cr>
set foldmethod=marker
let g:AutoPairsShortcutToggle = ''

highlight CocFloating ctermbg=black
highlight CocErrorFloat ctermfg=red
highlight CocInfoFloat ctermfg=yellow
