"Ravi Roy (https://github.com/Ravieroy)

"setting leader key
"let mapleader=","

"For plugins in vim(I am using vim-plug)
"Install it using following command in terminal(https://github.com/junegunn/vim-plug)
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"sometimes this might not work, so clone the above repo using git clone https://github.com/junegun    n/vim-plug .
 "Then simply copy the plug.vim file from there into ~/.vim/autoload 
 "Use :PlugInstall to install newly added plugin and :PlugUpdate to update the plugin  



call plug#begin()
Plug 'PotatoesMaster/i3-vim-syntax' "Installs plugin for i3wm config
Plug 'gruvbox-community/gruvbox' "Colorsheme for vim
Plug 'arcticicestudio/nord-vim' "Colorsheme for vim
Plug 'wadackel/vim-dogrun'
Plug 'ap/vim-css-color'          "For showing hex colours
Plug 'chrisbra/Colorizer'
call plug#end()

"Colorscheme for vim (gruvbox)
"let g:gruvbox_italic = '1'
"let g:gruvbox_transparent_bg = '1'
"let g:gruvbox_italicize_strings ='1'
colorscheme nord 

"colorscheme dogrun 
"Default new tab below and right of present tab
set splitbelow splitright 

"Remapping key to ctrl+h(j,k,l)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"set fillchars+=vert: 

" Make adjusing split sizes a bit more friendly
" use ctrl+arrow keys to resize vim splits
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Ignore case when searching
set ignorecase
set smartcase

" show the matching brackets
set showmatch

" highlight current line
set cursorline

" highlight all pattern matches WHILE typing the pattern
set incsearch

" visual autocomplete for command menu
set wildmenu         

" highlight matches
set hlsearch

" move vertically by visual line
" (n)ormal mode (nor)ecursive (remap) remapped_key original_key
nnoremap j gj
nnoremap k gk

" Enable mouse usage (all modes)
"set mouse=a 

" Automatically wrap text that extends beyond the screen length.
"set wrap

" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
"nnoremap <F2> :set invpaste paste?<CR>
"imap <F2> <C-O>:set invpaste paste?<CR>
"set pastetoggle=<F2>

"Setting spaces from TAB to 4 spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 

"Line numbers
"set relativenumber " (you can set relative line number)
"set nu             " making the reference line to be the real line number
set number          "Set line numbers
set bg=dark

"Key mappings for copy & Paste
vnoremap <C-y> "+y
map <C-v> "+P

" Setting no backup
set nobackup
