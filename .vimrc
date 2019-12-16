call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

" ALE Configuration
let g:ale_linters = { 'cs': ['OmniSharp'] } " Block non-omnisharp linters in ALE
