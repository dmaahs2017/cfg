let mapleader = ","

" ========================================
" # Normal Mode Keybinds
" ========================================
" Open Hotkeys
nnoremap <leader>nn :NERDTreeToggle <CR>
nnoremap <C-p> :Files <CR>
nnoremap <leader>; :Buffers <CR>

" Quick save and quit
nnoremap <leader>w :w<CR>
nnoremap <S-Z><S-A> :qa <CR>
nnoremap <S-Z>a :wqa <CR>

" Quick reload vimrc
nnoremap <leader>sv :so $MYVIMRC <CR>

" Panel switching
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Change pannel sizes
nnoremap + <C-W>+
nnoremap - <C-W>-
nnoremap < <C-W><
nnoremap > <C-W>>

" Proper Command search keys
cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>

" Go to start and end of line
noremap H ^
noremap L $

" Very magic search by default. (Normal Regex)
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

" Copy file path to unamed buffer
nnoremap <leader>cp :let @+ = expand("%")<cr>



" Other
nnoremap <leader>r :checktime <CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
