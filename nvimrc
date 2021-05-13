source syntax.vim

set modelines=0 nomodeline
set ls=0
set mouse=a
call NumberSyntax()
call GeneralSyntax()

fun! QuitNvim(...)
    q!
endf

fun! TermAndQuit(...)
    let s:cmd = get(a:, 1, "TERM=vt100 nano")

    let s:callbacks = {
                \ 'on_exit': function('QuitNvim')
                \ }

    let jobid = termopen(s:cmd, s:callbacks)
endf
