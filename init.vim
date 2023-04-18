let mapleader = "," " map leader to comma
"colorscheme tokyonight
colorscheme tokyonight-night

set termguicolors

" --------------------
" Plugin Includes
" --------------------
lua require('plugins')
lua require("nvim-tree").setup{}
lua require('bufferline-conf')


" --------------------
" Plugin Bindings
" --------------------
" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>Fh <cmd>Telescope help_tags<cr>

nnoremap <leader>dd <cmd>NvimTreeToggle<cr>

" Startify
let g:startify_custom_header = ['hello, world']
let g:startify_bookmarks = [ {'c': '~/c'}]

" ------------------
" Main
" ------------------
set shiftwidth=4
set tabstop=4
set smartindent
set autoindent
set nohlsearch

inoremap jk <Esc>
inoremap kj <Esc>
tnoremap kj <c-\><c-n>
tnoremap jk <c-\><c-n>




" nnoremap ,w :w<cr>
nnoremap ,o O<esc>

" replace word under cursor, press . to replace next occurence
nnoremap ,* *Ncgn 


"-------------------
" Run
"-------------------
" nnoremap ,p :w<cr>:vs<cr>:term python3 %<cr>
nnoremap ,p :w<cr> :silent !tmux select-window -tvim \; send-keys -tvim 'clear; python3 %' Enter<cr>

nnoremap ,e :w<cr> :silent !tmux select-window -t0 \; send-keys -t0 'clear' Enter Up Up Enter<cr>

" tmux - repeat command
nnoremap ,r0 :silent !tmux select-window -t0 \; send-keys -t0 'clear; repeat' Enter<cr>
nnoremap ,r1 :silent !tmux select-window -t1 \; send-keys -t1 'clear; repeat' Enter<cr>
nnoremap ,r2 :silent !tmux select-window -t2 \; send-keys -t2 'clear; repeat' Enter<cr>
nnoremap ,r3 :silent !tmux select-window -t3 \; send-keys -t3 'clear; repeat' Enter<cr>

" tmux - repeat command in panes
nnoremap ,tp1 :silent !tmux select-window -t panes \; send-keys -tpanes.0 'clear; repeat' Enter<cr>
nnoremap ,tp2 :silent !tmux select-window -t panes \; send-keys -tpanes.1 'clear; repeat' Enter<cr>
nnoremap ,tp3 :silent !tmux select-window -t panes \; send-keys -tpanes.2 'clear; repeat' Enter<cr>
nnoremap ,tp4 :silent !tmux select-window -t panes \; send-keys -tpanes.3 'clear; repeat' Enter<cr>



"-------------------
" Buffers
"-------------------
" may interfere w/ cgn actions 
nnoremap gn :bn<cr>
nnoremap gp :bp<cr>
nnoremap gj :b#<cr>
" nnoremap ,b :ls<cr>:b  " replaced by telescope find buffer


"-------------------
" Tabs 
"-------------------
" tab movement 

nnoremap ,te :tabe 
nnoremap ,tn :tabnew<cr>
nnoremap ,1 1gt
nnoremap ,2 2gt
nnoremap ,3 3gt
nnoremap ,4 4gt
nnoremap ,5 5gt

tnoremap ,1 1gt
tnoremap ,2 2gt
tnoremap ,3 3gt
tnoremap ,4 4gt
tnoremap ,5 5gt


" jump to mark ???
nnoremap ,a 'A
nnoremap ,s 'S
nnoremap ,d 'D
" nnoremap ,f 'F " find file




" ------------------
" Windows
" ------------------
set splitright
set splitbelow

" create splits
nnoremap ,vs :vs<cr>
nnoremap ,sp :sp<cr>
nnoremap ,wc <c-w><c-c>
tnoremap ,wc <c-\><c-n><c-w><c-c>
nnoremap ,vt :vs<cr>:terminal<cr>a


nnoremap <silent> ,nh :noh<cr>


" move to window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>

tnoremap <c-h> <c-\><c-n><c-w><c-h>
tnoremap <c-l> <c-\><c-n><c-w><c-l>
tnoremap <c-j> <c-\><c-n><c-w><c-j>
tnoremap <c-k> <c-\><c-n><c-w><c-k>


" resize
nnoremap <silent> <c-left> :vertical resize -15<cr>
nnoremap <silent> <c-right> :vertical resize +15<cr>
nnoremap <silent> <c-up> :resize +5<cr>
nnoremap <silent> <c-down> :resize -5<cr>
nnoremap ,wf <c-w>\| <c-w>_
nnoremap ,wr <c-w>=

:set fillchars+=vert:\ 

" ---------------
"  Terminal
" ---------------
" start terminal in insert mode 
autocmd BufWinEnter,WinEnter term://* startinsert


" ------------------
" Visual
" ------------------
" cterm=none is required at end for it to work properly, not sure why
hi StatusLine ctermfg=white ctermbg=237 cterm=bold
hi StatusLineNC ctermfg=grey ctermbg=237 cterm=none
hi LineNr ctermfg=darkgrey



" ------------------
" Other
" ------------------
" relative line numbers
set relativenumber

" auto save
au TextChanged,TextChangedI <buffer> if &readonly == 0 && filereadable(bufname('%')) | silent write | endif


" files
nnoremap ,vc :e ~/.config/nvim/init.vim<cr>
nnoremap ,vp :e ~/.config/nvim/lua/plugins.lua<cr>
nnoremap ,vP :w<cr> :source %<cr> :PackerSync<cr>

" reload vimrc
nnoremap ,vr :w<cr> :source ~/.config/nvim/init.vim<cr>
" nnoremap ,r :w<cr> :source ~/.config/nvim/init.vim<cr>

" ------------------
" Testing
" ------------------
nnoremap ,tb :echo 'old test'<cr>

nnoremap ,ta :nnoremap ,tb :echo 'NEW TEST'<cr><cr>
