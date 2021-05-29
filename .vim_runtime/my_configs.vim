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

"=================NERDTree Configs==========================
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.class$']
"=================END NERDTree Configs======================

set autoread
set clipboard=unnamedplus
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

"=================CoC Configs==========================
" Remap <C-u> and <C-d> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
"=================End Coc Configs======================

highlight CocFloating ctermbg=black
highlight CocErrorFloat ctermfg=red
highlight CocInfoFloat ctermfg=yellow
