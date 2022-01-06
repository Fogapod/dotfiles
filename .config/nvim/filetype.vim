augroup filetypedetect
  " Mail
  au BufRead,BufNewFile /tmp/mutt*              setfiletype mail
  au Filetype mail                              setlocal spell tw=72 colorcolumn=73
  au Filetype mail                              setlocal fo+=w
  " Git commit message
  au Filetype gitcommit                         setlocal spell tw=72 colorcolumn=73
  " nftables
  au BufRead,BufNewFile *.nft setfiletype nftables
  " Shorter columns in text
  au Filetype tex setlocal spell tw=80 colorcolumn=81
  au Filetype text setlocal spell tw=72 colorcolumn=73
  au Filetype markdown setlocal spell tw=72 colorcolumn=73
  " No autocomplete in text
  au BufRead,BufNewFile /tmp/mutt* let b:coc_enabled = 0
  au Filetype tex let b:coc_enabled = 0
  au Filetype text let b:coc_enabled = 0
  au Filetype markdown let b:coc_enabled = 0
  " Python
  au Filetype python setlocal colorcolumn=88
  " Rust
  au Filetype rust setlocal colorcolumn=100
augroup END
