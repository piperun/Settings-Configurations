" If the cursor is in the middle of a quote block when <CR> is pressed
" a quote is added to the end of the line followed by a plus, a <CR>
" and another quote.
function! Quotereturn()
  let before=strpart(getline(line(".")), 0, col(".")-1)
  "let after=strpart(getline(line(".")), col("."))
  if(before =~ '^\([^"]*"\([^"\\]\|\\.\)*"\)*[^"]*"\([^"\\]\|\\.\)*$')
    return "\"+\"\<Left>\<CR>\<Right>"
  else
    return "\<CR>"
  endif
endf
inoremap <CR> <C-R>=Quotereturn()<CR>

" If you backspace over a quote and it's a continuation fromanother line
" the two strings will be concatenated with quotes, spaces, and + removed.
function! Quotebackspace()
  if( (strpart(getline(line(".")), 0, col(".")-1) =~ '^\s*"$') && (getline(line(".")-1) =~ "\"+$") )
    return "\<Esc>d0kgJhhxxxi"
  else
    return "\<C-H>"
  endif
endf
inoremap <BS> <C-R>=Quotebackspace()<CR>
