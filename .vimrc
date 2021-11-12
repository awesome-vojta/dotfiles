syntax on
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch

set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey



hi Visual ctermbg=233

" Cursor in terminal
  " https://vim.fandom.com/wiki/Configuring_the_cursor
  " 1 or 0 -> blinking block
  " 2 solid block
  " 3 -> blinking underscore
  " 4 solid underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
    
  if &term =~ '^xterm'
    " normal mode
    let &t_EI .= "\<Esc>[2 q"
    " insert mode
    let &t_SI .= "\<Esc>[6 q"
  endif
