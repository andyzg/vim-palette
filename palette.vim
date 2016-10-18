if !has('python')
  finish
end

function! Palette()
  if bufwinnr("Palette_Buffer") < 0
    exec "topleft vertical 31 new"
    exec "edit Palette_Buffer"
  else
    bd "Palette_Buffer"
  endif
endfunc

command! Palette call Palette()
