" Neovim configuration
" Loads when nvim launched

" Load plugins
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'tpope/vim-surround' " Surround word using ysw*
Plug 'tpope/vim-commentary' " Comment using gcc & gc
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' } " Preview color codes in-line
Plug 'scottmckendry/cyberdream.nvim' " Colorscheme
Plug 'ryanoasis/vim-devicons' " Support for developer icons
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Themes for status bar
Plug 'preservim/nerdtree' " File tree navigator
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Tab auto-completion
call plug#end()

" Basic settings
set title
set number relativenumber
set autoindent
set smarttab
set mouse=a
set termguicolors

" Set color code display mode
let g:Hexokinase_highlighters = ['backgroundfull']

" Set colorscheme
colorscheme cyberdream 
let g:airline_theme='transparent'

" Transparent background
highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none

" NERDTree key bindings
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" COC key bindings
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
