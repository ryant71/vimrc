
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
set whichwrap=h,l

" numbers
set number
:nnoremap <Leader>\ :set relativenumber!<CR>

" copy and paste to/from env buffer to/from vim buffer
set clipboard=unnamed
set clipboard=unnamedplus

" insert a date/time
nmap <Leader>d i<C-R>=strftime("%Y-%m-%d %a %H:%M")<CR><Esc>
imap <Leader>d <C-R>=strftime("%Y-%m-%d %a %H:%M")<CR>
