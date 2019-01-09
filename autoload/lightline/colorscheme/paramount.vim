" -----------------------------------------------------------------------------
" File: paramount.vim
" Description: Paramount colorscheme for Lightline (itchyny/lightline.vim)
" Author: samflores <me@samflor.es>
" Source: https://github.com/samflores/vim-colors-paramount
" Last Modified: 09 Jan 2019
" -----------------------------------------------------------------------------

function! s:getColor(group)
  let guiColor = synIDattr(hlID(a:group), "fg", "gui")
  let termColor = synIDattr(hlID(a:group), "fg", "cterm")
  return [ guiColor, termColor ]
endfunction

if exists('g:lightline')
  let s:bg1    = s:getColor('LightlineBG1')
  let s:bg2    = s:getColor('LightlineBG2')

  let s:gray   = s:getColor('LightlineGray')
  let s:yellow = s:getColor('LightlineYellow')
  let s:cyan   = s:getColor('LightlineCyan')
  let s:orange = s:getColor('LightlineOrange')
  let s:green  = s:getColor('LightlineGreen')
  let s:purple = s:getColor('LightlinePurple')
  let s:red    = s:getColor('LightlineRed')

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
  let s:p.normal.left     = [ [ s:bg1, s:purple, 'bold' ], [ s:purple, s:bg2 ] ]
  let s:p.normal.right    = [ [ s:bg1, s:purple ],         [ s:purple, s:bg2 ] ]
  let s:p.normal.middle   = [ [ s:purple, s:bg2 ] ]

  let s:p.normal.error    = [ [ s:bg1, s:red ] ]
  let s:p.normal.warning  = [ [ s:bg2, s:yellow ] ]

  let s:p.inactive.right  = [ [ s:gray, s:bg2 ], [ s:gray, s:bg2 ] ]
  let s:p.inactive.left   = [ [ s:gray, s:bg2 ], [ s:gray, s:bg2 ] ]
  let s:p.inactive.middle = [ [ s:gray, s:bg2 ] ]

  let s:p.insert.left     = [ [ s:bg1, s:green, 'bold' ], [ s:green, s:bg2 ] ]
  let s:p.insert.right    = [ [ s:bg1, s:green ],         [ s:green, s:bg2 ] ]
  let s:p.insert.middle   = [ [ s:green, s:bg2 ] ]

  let s:p.terminal.left   = [ [ s:bg1, s:cyan, 'bold' ], [ s:cyan, s:bg2 ] ]
  let s:p.terminal.right  = [ [ s:bg1, s:cyan ],         [ s:cyan, s:bg2 ] ]
  let s:p.terminal.middle = [ [ s:cyan, s:bg2 ] ]

  let s:p.replace.left    = [ [ s:bg1, s:orange, 'bold' ], [ s:orange, s:bg2 ] ]
  let s:p.replace.right   = [ [ s:bg1, s:orange ],         [ s:orange, s:bg2 ] ]
  let s:p.replace.middle  = [ [ s:orange, s:bg2 ] ]

  let s:p.visual.left     = [ [ s:bg1, s:yellow, 'bold' ], [ s:yellow, s:bg2 ] ]
  let s:p.visual.right    = [ [ s:bg1, s:yellow ],         [ s:yellow, s:bg2 ] ]
  let s:p.visual.middle   = [ [ s:yellow, s:bg2 ] ]

  let s:p.tabline.left    = [ [ s:purple, s:bg2 ] ]
  let s:p.tabline.tabsel  = [ [ s:bg1, s:purple, 'bold' ] ]
  let s:p.tabline.middle  = [ [ s:bg1, s:bg1 ] ]
  let s:p.tabline.right   = [ [ s:bg1, s:purple ] ]

  let g:lightline#colorscheme#paramount#palette = lightline#colorscheme#flatten(s:p)
endif
