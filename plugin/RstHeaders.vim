if !has('python')
    finish
endif

function! FormatRstHeaders() range
    let s:script_path = escape( expand( '<sfile>:p:h' ), '\' )
    execute a:firstline . ',' . a:lastline . 'pyfile ' . s:script_path . '/plugin/rstheaders.py'
endfunc

command! -range RstHeaders <line1>,<line2>call FormatRstHeaders()
