" turn syntax highlighting on 
syntax on

" display line numbers 
set number 

" highlight cursorline horizontally 
set cursorline

" ignore capital letters on search
set ignorecase 

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
