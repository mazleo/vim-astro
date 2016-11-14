" Astro - An Xcode Dusk theme replica for Vim
" Author: Jonnelin Leonardo <jonnelin.leonardo@gmail.com>

highlight clear

if exists('syntax_on')
    syntax reset
endif

set background=dark
set guifont=Monospace\ Bold\ 10 

let t_Co = 256
let colors_name = 'astro'

let s:white     = ['#FFFFFF', 234]
let s:gray0     = ['#22232D', 234]
let s:gray1     = ['#281145', 235]
let s:gray2     = ['#32354D', 237]
let s:gray3     = ['#51567D', 243]
let s:gray4     = ['#A19ABD', 248]
let s:red       = ['#D74749', 132]
let s:green     = ['#53A454', 65]
let s:yellow    = ['#b5a262', 143]
let s:blue      = ['#07A5B6', 67]
let s:purple    = ['#8B82BA', 97]
let s:cyan      = ['#07A5B6', 73]
let s:pink      = ['#B2387F', 168]
let s:orange    = ['#b3785d', 137]
let s:neonpurple  = ['#9673E5', 75]

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
    endif

    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
    endif

    if l:attr != ''
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Editor Highlights
call s:HL('ColorColumn',                    '',         s:gray3,    'bold')
call s:HL('Cursor',                         s:gray1,    s:neonpurple, 'bold')
call s:HL('CursorColumn',                   '',         s:gray1,    'bold')
call s:HL('CursorLine',                     '',         s:gray1,    'bold')
call s:HL('Directory',                      s:blue,     '',         'bold')
call s:HL('DiffAdd',                        s:gray2,    s:green,    'bold')
call s:HL('DiffChange',                     s:gray2,    s:green,   'bold')
call s:HL('DiffDelete',                     s:gray2,    s:red,      'bold')
call s:HL('DiffText',                       s:gray2,    s:blue,     'bold')
call s:HL('ErrorMsg',                       s:red,      s:gray0,    'bold')
call s:HL('VertSplit',                      s:gray3,    s:gray0,    'bold')
call s:HL('Folded',                         s:gray2,    s:gray0,    'bold')
call s:HL('FoldColumn',                     s:cyan,     s:gray0,    'bold')
call s:HL('SignColumn',                     s:gray1,    s:gray0,    'bold')
call s:HL('LineNr',                         s:gray2,    '',         'bold')
call s:HL('CursorLineNr',                   s:gray4,    s:gray1,    'bold')
call s:HL('MatchParen',                     s:gray1,    s:pink,     'bold')
call s:HL('ModeMsg',                        s:green,    '',         'bold')
call s:HL('MoreMsg',                        s:green,    '',         'bold')
call s:HL('NonText',                        s:gray3,    '',         'bold')
call s:HL('Normal',                         s:white,    s:gray0,    'bold')
call s:HL('Pmenu',                          s:gray4,    s:gray2,    'bold')
call s:HL('PmenuSel',                       s:gray1,    s:neonpurple, 'bold')
call s:HL('PmenuSbar',                      s:gray2,    s:gray3,    'bold')
call s:HL('PmenuThumb',                     s:gray3,    s:gray4,    'bold')
call s:HL('Question',                       s:green,    '',         'bold')
call s:HL('Search',                         s:gray0,    s:green,   'bold')
call s:HL('SpecialKey',                     s:gray3,    '',         'bold')
call s:HL('SpellCap',                       s:blue,     '',         'undercurl')
call s:HL('SpellBad',                       s:red,      '',         'undercurl')
call s:HL('StatusLine',                     s:gray4,    s:gray2,    'bold')
call s:HL('StatusLineNC',                   s:gray1,    s:gray3,    'bold')
call s:HL('TabLine',                        s:gray2,    s:gray0,    'bold')
call s:HL('TabLineFill',                    s:gray3,    s:gray1,    'bold')
call s:HL('TabLineSel',                     s:gray1,    s:gray3,    'bold')
call s:HL('Title',                          s:green,   '',         'bold')
call s:HL('Visual',                         s:gray3,    s:gray1,    'bold')
call s:HL('WarningMsg',                     s:red,      '',         'bold')
call s:HL('WildMenu',                       s:gray1,    s:neonpurple, 'bold')

" Generic Syntax
call s:HL('Comment',                        s:purple,    '',         'bold')
call s:HL('Constant',                       s:pink,      '',         'bold')
call s:HL('String',                         s:red,    '',         'bold')
call s:HL('Character',                      s:red,    '',         'bold')
call s:HL('Identifier',                     s:pink,   '',         'bold')
call s:HL('Function',                       s:white,   '',         'bold')
call s:HL('Statement',                      s:blue,     '',         'bold')
call s:HL('Operator',                       s:pink,     '',         'bold')
call s:HL('PreProc',                        s:pink,     '',         'bold')
call s:HL('Define',                         s:blue,     '',         'bold')
call s:HL('Macro',                          s:blue,     '',         'bold')
call s:HL('Type',                           s:green,   '',         'bold')
call s:HL('Structure',                      s:blue,     '',         'bold')
call s:HL('Special',                        s:pink,     '',         'bold')
call s:HL('Error',                          s:red,      s:gray0,    'bold')
call s:HL('Todo',                           s:blue,     s:gray0,    'bold')

" CSS/Sass/Less
call s:HL('cssAttrComma',                   s:green,    '',         'bold')
call s:HL('cssAttributeSelector',           s:green,    '',         'bold')
call s:HL('cssBraces',                      s:gray4,    '',         'bold')
call s:HL('cssClassName',                   s:blue,   '',         'bold')
call s:HL('cssClassNameDot',                s:blue,   '',         'bold')
call s:HL('cssIdentifier',                  s:green,   '',         'bold')
call s:HL('cssImportant',                   s:purple,   '',         'bold')
call s:HL('cssMediaType',                   s:purple,   '',         'bold')
call s:HL('cssProp',                        s:gray4,    '',         'bold')
call s:HL('cssSelectorOp',                  s:blue,     '',         'bold')
call s:HL('cssSelectorOp2',                 s:blue,     '',         'bold')

call s:HL('sassAmpersand',                  s:blue,     '',         'bold')
call s:HL('sassClass',                      s:blue,   '',         'bold')
call s:HL('sassClassChar',                  s:blue,   '',         'bold')

call s:HL('lessAmpersand',                  s:blue,     '',         'bold')
call s:HL('lessClass',                      s:blue,   '',         'bold')
call s:HL('lessClassChar',                  s:blue,   '',         'bold')
call s:HL('lessFunction',                   s:green,   '',         'bold')
call s:HL('lessCssAttribute',               s:gray4,    '',         'bold')

" Git
call s:HL('gitcommitComment',               s:gray3,    '',         'bold')
call s:HL('gitcommitOnBranch',              s:gray3,    '',         'bold')
call s:HL('gitcommitFile',                  s:cyan,     '',         'bold')
call s:HL('gitcommitHeader',                s:purple,   '',         'bold')
call s:HL('gitcommitBranch',                s:blue,   '',         'bold')
call s:HL('gitcommitUnmerged',              s:green,    '',         'bold')
call s:HL('gitcommitUntrackedFile',         s:cyan,     '',         'bold')
call s:HL('gitcommitSelectedFile',          s:green,    '',         'bold')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         'bold')
call s:HL('gitcommitUnmergedFile',          s:green,   '',         'bold')
call s:HL('gitcommitSelectedType',          s:green,    '',         'bold')
call s:HL('gitcommitDiscardedType',         s:red,      '',         'bold')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call s:HL('htmlArg',                        s:green,   '',         'bold')
call s:HL('htmlEndTag',                     s:purple,   '',         'bold')
call s:HL('htmlTag',                        s:purple,   '',         'bold')
call s:HL('htmlTagName',                    s:blue,     '',         'bold')
call s:HL('htmlTitle',                      s:gray4,    '',         'bold')

" Javascript
call s:HL('javaScriptBraces',               s:gray4,    '',         'bold')
call s:HL('javaScriptIdentifier',           s:blue,     '',         'bold')
call s:HL('javaScriptFunction',             s:blue,     '',         'bold')
call s:HL('javaScriptNumber',               s:red,      '',         'bold')
call s:HL('javaScriptReserved',             s:blue,     '',         'bold')
call s:HL('javaScriptRequire',              s:cyan,     '',         'bold')
call s:HL('javaScriptNull',                 s:red,      '',         'bold')

" Ruby
call s:HL('rubyBlockParameterList',         s:purple,   '',         'bold')
call s:HL('rubyInterpolationDelimiter',     s:purple,   '',         'bold')
call s:HL('rubyStringDelimiter',            s:green,    '',         'bold')
call s:HL('rubyRegexpSpecial',              s:cyan,     '',         'bold')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         'bold')
call s:HL('diffRemoved',                    s:red,      '',         'bold')

" Vim-Gittgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete
call s:HL('GitGutterChangeDelete',          s:blue,   '',         'bold')

" Vim-Signify
call s:HL('SignifySignAdd',                 s:green,    '',         'bold')
call s:HL('SignifySignChange',              s:green,   '',         'bold')
call s:HL('SignifySignDelete',              s:red,      '',         'bold')
