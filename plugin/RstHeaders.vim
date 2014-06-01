if !has('python')
    finish
endif

function! FormatRstHeaders() range
    execute a:firstline . ',' . a:lastline . 'pyfile rstheaders.py'
endfunc

command! -range RstHeaders <line1>,<line2>call FormatRstHeaders()
