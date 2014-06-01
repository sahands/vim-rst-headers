if !has('python')
    finish
endif

let s:script_path = escape( expand( '<sfile>:p:h' ), '\' )

function! FormatRstHeaders() range
    execute a:firstline . ',' . a:lastline . 'pyfile ' . s:script_path . '/rstheaders.py'
endfunc

command! -range RstHeaders <line1>,<line2>call FormatRstHeaders()
