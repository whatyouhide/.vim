" Get rid of the vi stuff and fully embrace vim.
set nocompatible

" Plugins.
source ~/.vim/rc/plugins.vim

" Enable file type detection and do language-dependent indenting (this
" also 'closes' vundle, and it's *required*).
filetype plugin indent on

" Turn on syntax highlighting.
syntax on

" Enable the matchit plugin (required by textobj-rubyblock).
runtime macros/matchit.vim

" Source external files.
source ~/.vim/rc/options.vim
source ~/.vim/rc/functions.vim
source ~/.vim/rc/autocmds.vim
source ~/.vim/rc/commands.vim
source ~/.vim/rc/mappings.vim
source ~/.vim/rc/leader-mappings.vim
source ~/.vim/rc/plugin-configs.vim

" Some custom configurations.

" Choose a dark and a light themes...
let g:light_colorscheme = $DOTFILES_VIM_LIGHT_COLORSCHEME
let g:dark_colorscheme = $DOTFILES_VIM_DARK_COLORSCHEME
let g:gui_colorscheme = $DOTFILES_GUI_VIM_COLORSCHEME
" ...with defaults.
if empty(g:light_colorscheme) | let g:light_colorscheme = 'ocean-light' | endif
if empty(g:dark_colorscheme)  | let g:dark_colorscheme = 'ocean-dark'   | endif
if empty(g:gui_colorscheme)   | let g:gui_colorscheme = 'base16-ocean'  | endif

" Day/night hours (used to choose between light and dark colorschemes).
let g:day_starts_at = 8
let g:day_ends_at = 19

" Light theme during day hours, dark otherwise.
call ColorschemeBasedOnTime()


" Tmuxline
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = {
  \ 'a'    : '#S',
  \ 'b'    : '#{pane_current_path}',
  \ 'c'    : '%l:%M %p',
  \ 'win'  : '#I #W',
  \ 'cwin' : '#I #W',
  \ 'x'    : '#(osx-battery)',
  \ 'y'    : '#(whoami)',
  \ 'z'    : '#h' }
