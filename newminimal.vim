set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "newminimal"
hi Normal       guifg=black     ctermfg=black
hi NonText      guifg=black     ctermfg=black
hi comment      guifg=darkgray  ctermfg=darkgray    gui=italic
hi constant     guifg=black     ctermfg=black
hi string       guifg=darkgreen ctermfg=darkgreen   gui=bold        cterm=bold
hi identifier   guifg=black     ctermfg=black
hi statement    guifg=darkblue  ctermfg=darkblue    gui=bold        cterm=bold
hi define                                           gui=bold        cterm=bold
hi preproc      guifg=black     ctermfg=black
hi type         guifg=darkblue  ctermfg=darkblue    gui=bold        cterm=bold
hi special      guifg=black     ctermfg=black
hi underlined   guifg=black     ctermfg=black       gui=underline   cterm=underline
hi label        guifg=black     ctermfg=black
hi operator     guifg=black     ctermfg=black
hi delimiter    guifg=darkgray  ctermfg=darkgray    gui=none        cterm=none

hi errormsg     guifg=black     ctermfg=black
hi warningmsg   guifg=black     ctermfg=black       gui=bold        cterm=bold
hi modemsg      guifg=black     ctermfg=black       gui=none
hi moremsg      guifg=black     ctermfg=black       gui=none
hi error        guifg=black     ctermfg=black       gui=underline

hi todo         guifg=black     ctermfg=black
hi search       guifg=black     ctermfg=black
hi incsearch    guifg=black     ctermfg=black
hi linenr       guifg=lightgray ctermfg=lightgray
hi title        guifg=black     ctermfg=black       gui=bold        cterm=bold
hi visual       guibg=lightgray ctermbg=white

hi cursor       guifg=black     ctermfg=black
hi cursorlinenr guifg=lightgray ctermfg=lightgray   guibg=white         ctermbg=white       gui=none    cterm=none
hi cursorline                                       guibg=white         ctermbg=white       gui=none    cterm=none

hi statusline   guifg=black     ctermfg=black       guibg=lightgray     ctermbg=lightgray   gui=none    cterm=none
hi statuslinenc guifg=fg        ctermfg=fg          guibg=#cccbca       ctermbg=white       gui=none    cterm=none
hi vertsplit    guifg=black     ctermfg=black                                               gui=none    cterm=none

hi DiffChange   guifg=black ctermfg=black
hi DiffText     guifg=black ctermfg=black
hi DiffAdd      guifg=black ctermfg=black
hi DiffDelete   guifg=black ctermfg=black

hi Folded       guifg=black     ctermfg=black
hi FoldColumn   guifg=black     ctermfg=black
hi cIf0         guifg=black     ctermfg=black

