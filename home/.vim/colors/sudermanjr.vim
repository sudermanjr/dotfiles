" Vim color file

set background=light

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "sudermanjr"

"hi SignColumn -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#000000 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi DiffChange -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#000000 guibg=#ffffff guisp=#ffffff gui=bold ctermfg=NONE ctermbg=15 cterm=bold
hi SpecialComment guifg=#27408b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Typedef guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Title guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Folded guifg=#666666 guibg=#bbbbbb guisp=#bbbbbb gui=NONE ctermfg=241 ctermbg=250 cterm=NONE
hi PreCondit guifg=#3a5fcd guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Include guifg=#3a5fcd guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#829db9 guibg=#666666 guisp=#666666 gui=bold ctermfg=103 ctermbg=241 cterm=bold
hi NonText guifg=#a9a9a9 guibg=#bbbbbb guisp=#bbbbbb gui=bold ctermfg=248 ctermbg=250 cterm=bold
hi Debug guifg=#27408b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#000000 guibg=#7f7f7f guisp=#7f7f7f gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi Identifier guifg=#8b4726 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#27408b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Conditional guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi StorageClass guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Todo guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=bold ctermfg=NONE ctermbg=11 cterm=bold
hi Special guifg=#27408b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi LineNr guifg=#000000 guibg=#bbbbbb guisp=#bbbbbb gui=bold ctermfg=256 ctermbg=250 cterm=bold
hi StatusLine guifg=#829db9 guibg=#000000 guisp=#000000 gui=bold ctermfg=103 ctermbg=NONE cterm=bold
hi Label guifg=#8b4726 guibg=NONE guisp=NONE gui=bold,underline ctermfg=88 ctermbg=NONE cterm=bold,underline
hi PMenuSel guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi Search guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi Delimiter guifg=#27408b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Statement guifg=#8b4726 guibg=NONE guisp=NONE gui=bold ctermfg=88 ctermbg=NONE cterm=bold
hi Comment guifg=#3a5fcd guibg=NONE guisp=NONE gui=italic ctermfg=68 ctermbg=NONE cterm=NONE
hi Character guifg=#228b22 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi Float guifg=#228b22 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi Number guifg=#228b22 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi Boolean guifg=#228b22 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi Operator guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Question guifg=#228b22 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#ff0000 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi Define guifg=#3a5fcd guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Function guifg=#8b4726 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#000000 guibg=#979797 guisp=#979797 gui=NONE ctermfg=NONE ctermbg=246 cterm=NONE
hi PreProc guifg=#3a5fcd guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Visual guifg=#ffffff guibg=#829db9 guisp=#829db9 gui=NONE ctermfg=15 ctermbg=103 cterm=NONE
hi MoreMsg guifg=#228b22 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi VertSplit guifg=#9ca6af guibg=#696969 guisp=#696969 gui=bold ctermfg=109 ctermbg=242 cterm=bold
hi Exception guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Keyword guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Type guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Cursor guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Error guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi PMenu guifg=#000000 guibg=#a6a6a6 guisp=#a6a6a6 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SpecialKey guifg=#27408b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Constant guifg=#228b22 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi Tag guifg=#27408b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi String guifg=#228b22 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#000000 guibg=#bfbfbf guisp=#bfbfbf gui=NONE ctermfg=NONE ctermbg=7 cterm=NONE
hi Repeat guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Structure guifg=#27408b guibg=NONE guisp=NONE gui=bold ctermfg=18 ctermbg=NONE cterm=bold
hi Macro guifg=#3a5fcd guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Underlined guifg=#0000ff guibg=NONE guisp=NONE gui=underline ctermfg=21 ctermbg=NONE cterm=underline
hi cursorim guifg=#ffffff guibg=#96cdcd guisp=#96cdcd gui=bold ctermfg=15 ctermbg=152 cterm=bold
hi htmlitalic guifg=NONE guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
hi htmlboldunderlineitalic guifg=NONE guibg=NONE guisp=NONE gui=bold,italic,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi htmlbolditalic guifg=NONE guibg=NONE guisp=NONE gui=bold,italic ctermfg=NONE ctermbg=NONE cterm=bold
hi htmlunderlineitalic guifg=NONE guibg=NONE guisp=NONE gui=italic,underline ctermfg=NONE ctermbg=NONE cterm=underline
hi htmlbold guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi htmlboldunderline guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi htmlunderline guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi lcursor guifg=#f0f0f0 guibg=#503040 guisp=#503040 gui=NONE ctermfg=255 ctermbg=239 cterm=NONE
