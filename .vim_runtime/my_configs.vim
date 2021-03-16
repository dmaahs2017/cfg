call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround' 
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'preservim/nerdcommenter'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim'
Plug 'davidpdrsn/vim-notable'
Plug 'mattn/emmet-vim'
"Plug 'turbio/bracey.vim'
call plug#end()

source ~/.vim_runtime/coc_configs.vim

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
noremap <leader>sb :call notable#open_notes_file()<cr>

highlight CocFloating ctermbg=black
highlight CocErrorFloat ctermfg=red
highlight CocInfoFloat ctermfg=yellow

let t:is_transparent = 0                                                                        
function! Toggle_transparent_background()                                                       
  if t:is_transparent == 0                                                                      
    hi Normal guibg=dark ctermbg=darkgrey
    let t:is_transparent = 1                                                                    
  else                                                                                          
    hi Normal guibg=NONE ctermbg=NONE                                                           
    let t:is_transparent = 0                                                                    
  endif                                                                                         
endfunction                                                                                     
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR> 

" Emmet configs
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"set encoding=utf-8
