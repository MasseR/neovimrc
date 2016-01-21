function! Ghcmod_check_and_sign()
    exe ":sign unplace * file=" . expand('%:p')
    let l:qflist = ghcmod#make('check', expand('%:p'))
    " call extend(l:qflist, ghcmod#make('lint', expand('%:p')))
    call setqflist(l:qflist)
    for l:q in l:qflist
        if has_key(l:q, 'lnum') && has_key(l:q, 'filename')
            if l:q['type'] == 'E'
                let l:lnum = l:q['lnum']
                let l:filename = l:q['filename']
                exe ":sign place " . l:lnum . " line=" . l:lnum . " name=SyntasticError file=" . l:filename
            endif
        endif
    endfor
endfunction
