" Remap \bl to :e # (Open the last edited buffer)
noremap <Leader>bl :e #<cr>

" Remap <F5> to :make
noremap <F5> :make<cr>

" Open a terminal opened to the current directory
noremap <F12> :call system("urxvtc -cd " . expand("%:p:h"))<cr>

" Toggle Gundo window
noremap <F2> :GundoToggle<cr>


" Text layout mappings

" New items separated by commas to new lines
noremap <leader>,r mx:s/,/,\r/g<cr>='x

" Inlinexml to formatted xml
noremap <leader>>< mx:%s/> *</>\r</g<cr>gg=G'x

" fugitive helpers
noremap <Leader>gst :Gstatus<cr>
noremap <Leader>gd :Gdiff<cr>

" Todo finder
noremap <Leader>todo :vimgrep /\c\v(xxx:\|todo:)/ % \| cw<cr>

" Swap backtick and single-quote
noremap ' `
noremap ` '

noremap <Leader>za zMzv<cr>

noremap <Leader>lb :CtrlPBuffer<cr>
noremap <Leader>lf :CtrlP<cr>

noremap <Leader>at :Tagbar<cr>
