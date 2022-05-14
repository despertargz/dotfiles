" ------------------
" Main
" ------------------
set shiftwidth=4
set tabstop=4
set smartindent
set autoindent

inoremap jk <Esc>
inoremap kj <Esc>
tnoremap kj <c-\><c-n>
tnoremap jk <c-\><c-n>

nnoremap ,o O<esc>
nnoremap ,* *Ncgn



"-------------------
" Buffers
"-------------------
" may interfere w/ cgn actions
nnoremap gn :bn<cr>
nnoremap gp :bp<cr>
nnoremap ,b :ls<cr>:b 

" ------------------
" Windows
" ------------------
set splitright
set splitbelow

" create splits
nnoremap ,vs :vs<cr>
nnoremap ,sp :sp<cr>

" move to window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>

" resize
nnoremap <silent> <c-left> :vertical resize -15<cr>
nnoremap <silent> <c-right> :vertical resize +15<cr>
nnoremap <silent> <c-up> :resize +5<cr>
nnoremap <silent> <c-down> :resize -5<cr>
nnoremap ,wf <c-w>\| <c-w>_
nnoremap ,wr <c-w>=




" ------------------
" Other
" ------------------
set relativenumber
highlight LineNr ctermfg=darkgrey

" auto save
au TextChanged,TextChangedI <buffer> if &readonly == 0 && filereadable(bufname('%')) | silent write | endif





