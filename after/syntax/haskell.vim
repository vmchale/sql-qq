" store and remove current syntax value
let old_syntax = b:current_syntax
unlet b:current_syntax

syn include @sql syntax/sql.vim
unlet b:current_syntax

syn region sqlBlock matchgroup=quasiQuote start=/\[\$\?sql|/       end=/|\]/ contains=@sql

hi def link quasiQuote Underlined

" restore current syntax value
let b:current_syntax = old_syntax
