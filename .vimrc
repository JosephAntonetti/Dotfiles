call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'OmniSharp/omnisharp-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" ALE Configuration
let g:ale_linters = { 'cs': ['OmniSharp'] } " Block non-omnisharp linters in ALE

" FZF Configuration
nnoremap <space><space> :FZF<CR>
nnoremap <space>f :Ag<CR>
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Tab Line
set wildmenu
