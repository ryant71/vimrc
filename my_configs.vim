" column and line highlighting
:hi CursorLine   cterm=NONE ctermbg=237 ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=236 ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline!<CR>
:nnoremap <Leader>; :set cursorcolumn!<CR>
" start with line highlighting on
:set cursorline

" turn off highlighting of search matches
:nnoremap <Tab><Tab> :silent! nohls<cr>

set backspace=indent,eol,start
set whichwrap=

" numbers
set number
:nnoremap <Leader>r :set relativenumber!<CR>

" copy and paste to/from env buffer to/from vim buffer
set clipboard+=unnamed
set clipboard+=unnamedplus

" insert a date/time
nmap <Leader>d i<C-R>=strftime("%Y-%m-%d %a %H:%M")<CR><Esc>
imap <Leader>d <C-R>=strftime("%Y-%m-%d %a %H:%M")<CR>

autocmd FileType python set foldmethod=indent

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" code folding
" close all folds
nnoremap zk zM
" open all folds
nnoremap zz zR

" don't copy line numbers
set mouse=a

" Not a fuck
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>


" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" colours
colorscheme solarized
set bg=dark

" rst filetype
autocmd FileType rst set tabstop=3 expandtab softtabstop=3 shiftwidth=3
