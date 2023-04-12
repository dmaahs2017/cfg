" Vim Plug Plugins Section
call plug#begin()
" VIM Enhancements
Plug 'tpope/vim-surround' 
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'preservim/nerdcommenter'
" Plug 'tmsvg/pear-tree'
Plug 'jiangmiao/auto-pairs'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'

" Themeing
Plug 'chriskempson/base16-vim'

" Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/lsp_extensions.nvim'
"Plug 'nvim-lua/completion-nvim'

" Syntax Support
"Plug 'cespare/vim-toml'
"Plug 'stephpy/vim-yaml'
"Plug 'rust-lang/rust.vim'
"Plug 'rhysd/vim-clang-format'
"Plug 'plasticboy/vim-markdown'
"Plug 'godlygeek/tabular'

" Other
" Plug 'christoomey/vim-tmux-navigator'
Plug 'dhruvasagar/vim-table-mode'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

" =======================================
" # NERDTree Configs
" =======================================
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" =======================================
" # END NERDTree Configs
" =======================================

" =======================================
" # COC Configs
" =======================================
" Remap <C-u> and <C-d> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

highlight CocFloating ctermbg=black
highlight CocErrorFloat ctermfg=red
highlight CocInfoFloat ctermfg=yellow

" =======================================
" # END COC Configs
" =======================================

" =======================================
" # Start Table Mode Configs
" =======================================

let g:table_mode_corner='|'

" =======================================
" # End Table Mode Configs
" =======================================

" =======================================
" # Start Pear Tree Configs
" =======================================

let b:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
let pear_tree_ft_disabled = []

" =======================================
" # End Pear Tree Configs
" =======================================
