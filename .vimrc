" vim:foldmethod=marker
 
" ----------------------------------
"  Vundle Requirements
" ----------------------------------

" Vundle Requirements {{{

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" }}}

" ----------------------------------
"  Plugins
" ----------------------------------

" Plugins {{{

"Vundle
Plugin 'gmarik/Vundle.vim' "Setup for Vundle

"Synatx
Plugin 'dense-analysis/ale' "Linting and syntax checking - have to install linters
Plugin 'sheerun/vim-polyglot' "Syntax highlighting
Plugin 'uiiaoo/java-syntax.vim' "Syntax highlighting for java
Plugin 'yegappan/lsp' "Language server
Plugin 'girishji/vimcomplete' "Autocomplete

"Code Running
Plugin 'jpalardy/vim-slime' "Allows for sending code to terminal
Plugin 'jalvesaq/Nvim-R' "Literally a full R IDE

"Git Integration
Plugin 'tpope/vim-fugitive' "Git integration
Plugin 'airblade/vim-gitgutter' "Git status in the gutter

"File Navigation
Plugin 'Yggdroot/LeaderF' "Super powerful finder
Plugin 'tpope/vim-vinegar' "Enhances netrw
Plugin 'chriszarate/yazi.vim' "Vim integration for yazi

"Quality of Life
Plugin 'tmhedberg/SimpylFold' "Automatic folding for imports, functions in python
Plugin 'lunarwatcher/auto-pairs' "Quotes and brackets in pairs
Plugin 'chrisbra/csv.vim' "Allows for editing CSVs, also view R objects
Plugin 'Yggdroot/indentLine' "Handy little indent display
Plugin 'mbbill/undotree' "Undo tree
Plugin 'tpope/vim-surround' "Surrounds things with quotes
Plugin 'ap/vim-css-color' "Loads CSS colors in real time
Plugin 'romainl/vim-cool' "Automatically unhighlights after search
Plugin 'wellle/context.vim' "Shows the current loop or funciton
Plugin 'tpope/vim-commentary' "Allows for commenting with motions
Plugin 'tpope/vim-unimpaired' "Adds some bracket mappings
Plugin 'kristijanhusak/vim-carbon-now-sh' "Allows for sending code screenshots to carbon

"Asthetic
Plugin 'junegunn/rainbow_parentheses.vim' "Colored parentheses
Plugin 'catppuccin/vim' "Catppuccin!
Plugin 'itchyny/lightline.vim' "Status bar without the annoying characters
Plugin 'mengelbrecht/lightline-bufferline'
Plugin 'jszakmeister/vim-togglecursor' "Different cursors for different modes
Plugin 'ryanoasis/vim-devicons' "Shows symbols in Nerd Tree
Plugin 'mhinz/vim-startify' "Start screen for vim
Plugin 'machakann/vim-highlightedyank' "Highlight on yank
Plugin 'psliwka/vim-smoothie' "Smooth scrolling

"Not Currently In Use
" Plugin 'vim-airline/vim-airline' "Status and buffer bar
" Plugin 'justinmk/vim-sneak'  "Allows for jumping to two letter cominbations
" Plugin 'Xuyuanp/nerdtree-git-plugin' "Shows git status in Nerdtree
" Plugin 'PhilRunninger/nerdtree-visual-selection' "Mass file operation in nerdtree
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' "Shows file types in Nerd Tree
" Plugin 'Xuyuanp/nerdtree-git-plugin' "Shows git status in Nerdtree
" Plugin 'junegunn/vim-peekaboo' "Shows the current contents of your registers
" Plugin 'ycm-core/YouCompleteMe' "Multi language auto complete - several install requirements

call vundle#end()
filetype plugin indent on

" }}}

" ----------------------------------
"  Kitty Specific Configurations
" ----------------------------------

" Kitty Specific Configurations {{{

"Term value
set term=builtin_xterm

"Mouse support
set mouse=a
set ttymouse=sgr
set balloonevalterm

"Styled and colored underline support
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"

"Strikethrough
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"

"Truecolor support
let &t_8f = "\e[38:2:%lu:%lu:%lum"
let &t_8b = "\e[48:2:%lu:%lu:%lum"
let &t_RF = "\e]10;?\e\\"
let &t_RB = "\e]11;?\e\\"

"Bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"

"Cursor control
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"

"Focus tracking
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"

"Window title
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"

"vim hardcodes background color erase even if the terminfo file does
"not contain bce. This causes incorrect background rendering when
"using a color theme with a background color in terminals such as
"kitty that do not support background color erase.
let &t_ut=''

" }}}

" ----------------------------------
"  Default Vim Configurations
" ----------------------------------

" Default Vim Configurations {{{

"Coloring
set termguicolors
colorscheme catppuccin_mocha


"Relative Numbers
set number relativenumber

"Set leader
let mapleader = ' '

"Highlighting
syntax on
let python_highlight_all=1

"Put Swapfiles in a separate directory
set swapfile
set dir=~/tmp/
set backupdir=~/tmp/

"Always split screen below and to the right
set splitbelow
set splitright

"Highlight the active line number, fade the others
set cursorline
set cursorlineopt=number
highlight lineNr term=bold cterm=NONE ctermbg=none  ctermfg=none gui=bold
highlight CursorLine term=bold cterm=NONE ctermbg=none  ctermfg=none gui=bold
highlight CursorLineNr term=bold cterm=none ctermbg=blue ctermfg=yellow gui=bold

"Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Split Navigations for Terminal
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l

"Set Indent Preference
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set fileformat=unix

autocmd FileType python set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType vim set shiftwidth=4 softtabstop=4 tabstop=4 expandtab

"Set UTF-8
set encoding=utf-8

"Spellcheck
autocmd FileType text set spell
autocmd FileType markdown set spell
hi SpellBad gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=undercurl guisp=RED
hi SpellCap gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=undercurl guisp=BLUE

"Rehighlight After Indent In Visual
vnoremap < <gv
vnoremap > >gv

"Code Column
autocmd FileType python set colorcolumn=80
autocmd FileType r set colorcolumn=80
autocmd FileType java set colorcolumn=80

"Longer undo history
set history=1000

"Auto reload files changed outside vim
set autoread

"Break lines at nice places instead of linewrap
set linebreak
set breakindent
set breakindentopt=shift:2,sbr
set showbreak=>>

"Scroll at 8 lines from the margin
set scrolloff=6

"Search settings
"Search while typing, highlight results, only care about case when typed
set incsearch
set hlsearch
set ignorecase
set smartcase

"Fold column
set foldcolumn=2
set foldmethod=marker

"Move lines nicely in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Delete for real
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>D "_D
vnoremap <leader>D "_D

nnoremap <leader>x "_x
vnoremap <leader>x "_x

nnoremap <leader>c "_c
vnoremap <leader>c "_c
nnoremap <leader>C "_C
vnoremap <leader>C "_C

"Paste over something in visual mode
xnoremap <leader>p "_dP
xnoremap <leader>P "_d"+P

"Yank and put to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <leader>Y "+Y

nnoremap <leader>p "+p
nnoremap <leader>P "+P

"Buffer management
set hidden

"Don't cycle through terminal buffers
autocmd TerminalOpen * if bufwinnr('') > 0 | setlocal nobuflisted | endif
autocmd TerminalOpen * setlocal nobuflisted

"Control C to go to normal mode
inoremap <C-c> <Esc>

"Capital Q Sucks
nnoremap Q <nop>

"Terminal binds
nnoremap <silent><leader>t :vert term<CR>

"Hide the insert/visual line in the command bar
set noshowmode

"Grep the item under the cursor
nnoremap gw :vim <cword> % ./* <cr>

"Change the vimdiff colorscheme
hi DiffAdd      gui=none    guifg=NONE          guibg=#a6e3a1
hi DiffChange   gui=none    guifg=NONE          guibg=#f9e2af
hi DiffDelete   gui=bold    guifg=NONE          guibg=#eba0ac
hi DiffText     gui=none    guifg=NONE          guibg=#89dceb

"Center cursor on half page moves
"nnoremap <C-d> <C-d>zz
"nnoremap <C-d> <C-d>zz

" }}}

" ----------------------------------
"  Plugin Configs
" ----------------------------------

" Plugin Configs {{{

"Synatx
" -------------------------
"Ale Config
"Turn off virtual text, look for venvs, change error/warning sign and color
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_python_auto_virtualenv = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight ALEErrorSign ctermbg=NONE ctermfg=RED 
highlight ALEWarningSign ctermbg=NONE ctermfg=YELLOW 
highlight ALEWarning guibg=NONE guifg=NONE cterm=undercurl gui=undercurl guisp=YELLOW
highlight ALEError guibg=NONE guifg=NONE cterm=undercurl gui=undercurl guisp=RED
let g:ale_linters_ignore = {'python': ['mypy', 'pylint']}

"Vim LSP
let lspOpts = #{aleSupport: v:true, showSignature: v:false, snippetSupport: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)
nnoremap <silent><leader>ed :LspPeekDefinition<CR>
nnoremap <silent><leader>gd :LspGotoDefinition<CR>
nnoremap <silent><leader>rn :LspRename<CR>
nnoremap <silent><leader>ho :LspHover<CR>
nnoremap <silent><leader>oa :LspCodeAction<CR>

let lspServers = ([#{name: 'vimls',
                 \   filetype: 'vim',
                 \   path: '/home/thager/.nvm/versions/node/v22.1.0/bin/vim-language-server',
                 \   args: ['--stdio']
                 \ }, 
                 \ #{name: 'r',
                 \   filetype: 'r',
                 \   path: '/usr/bin/R',
                 \   args: ['--slave', '-e', 'languageserver::run()']
                 \   },
                 \ #{name: 'pyright',
                 \   filetype: 'python',
                 \   path: '/home/thager/.nvm/versions/node/v22.1.0/bin/pyright-langserver',
                 \   args: ['--stdio'],
                 \   workspaceConfig: #{
                 \    python: #{
                 \       pythonPath:'/home/thager/.virtualenvs/Work/bin/python3.11'
                 \    }}
                 \  },
                 \ #{name: 'jdtls',
                 \   filetype: 'java',
                 \   path: '/home/linuxbrew/.linuxbrew/bin/jdtls',
                 \   args: [],
                 \ },
                 \ #{name: 'bashls',
                 \   filetype: 'sh',
                 \   path: '/home/thager/.nvm/versions/node/v22.1.0/bin/bash-language-server',
                 \   args: ['start']
                 \}])
autocmd User LspSetup call LspAddServer(lspServers)

"Vimcomplete
let g:vimcomplete_tab_enable = 1
let vcoptions = #{vimcomplete-lsp-enable: v:true}
autocmd VimEnter * call g:VimCompleteOptionsSet(vcoptions)


"Code Running
" -------------------------
"Vim Slime
let g:slime_target = "vimterminal"
" let g:slime_python_ipython = 1

"Nvimr
"Turn off underscore to assign arrow
"Disable conflicting keybinds
let R_assign = 0 
let R_disable_cmds = ['RDSendLine']


"Git Integration
" -------------------------
"Vim Fugitive
nnoremap <silent> <leader>gs :Git<CR>


"File Navigation
" -------------------------
"Leader f
let g:Lf_WindowPosition = 'popup'
nnoremap <silent><leader>ro :Leaderf mru<CR>
nnoremap <silent><leader>l :Leaderf line<CR>
nnoremap <silent><leader>L :LeaderfLineAll<CR>
nnoremap <silent><leader>rg :Leaderf rg<CR>
nnoremap <silent><leader>qf :Leaderf quickfix<CR>

"Yazi vim
nnoremap <silent> - :Yazi<cr>
nnoremap <silent> _ :YaziWorkingDirectory<cr>

"Quality of Life
" -------------------------
"Autopairs
"Rebind hotkey to avoid conflict
let g:AutoPairsShortcutToggle = '<F5>'
let g:AutoPairsMapBS = 1

"Indent Line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Undo tree
nnoremap <leader>uu :UndotreeToggle<CR>
if has("persistent_undo") "Persistent undo
   let target_path = expand('~/.undodir')
    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

if !exists('g:undotree_HighlightChangedText')
    let g:undotree_HighlightChangedText = 0
endif

"Asthetic
" -------------------------
"Airline
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'catppuccin_mocha'
" let g:airline#extensions#tabline#enabled = 1
" set fillchars+=stl:\ ,stlnc:\ 

"Lightline
set laststatus=2
let g:lightline = {'colorscheme': 'catppuccin_custom'}
set showtabline=2
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed = '[No Name]'

let g:lightline.tabline = {'left': [['buffers' ]],
                        \ 'right': [['tabs']]
            \ }
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}
let g:lightline#bufferline#enable_devicons = 1

let g:lightline.separator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" }
let g:lightline.tabline_separator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.tabline_subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" }

"Rainbow parenthesis
autocmd FileType * RainbowParentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

"Yank Highlight
let g:highlightedyank_highlight_duration = 250
highlight HighlightedyankRegion guibg=#585b70

"Startify
let g:startify_enable_unsafe = 1
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

"Carbon now
vnoremap <F6> :CarbonNowSh"<CR>

"Not Currently In Use
" -------------------------
"You Complete Me
"Set leader ygt to go to definition, close preview window
" let g:ycm_autoclose_preview_window_after_completion = 1
" nnoremap <silent> <leader>ygt :YcmCompleter GoTo<CR>
" nnoremap <silent> <leader>yrr <cmd>execute 'YcmCompleter RefactorRename' input( 'Rename to: ' )<CR>

"Vim Sneak
" let g:sneak#s_next = 1
" let g:sneak#use_ic_scs = 1
" highlight Sneak guifg=black guibg=#c29df1
" nnoremap <leader>s <Plug>Sneak_f
" nnoremap <leader>S <Plug>Sneak_F

"Nerd Tree Config
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" let NERDTreeShowHidden=0
" let g:NERDTreeMapChangeRoot = "E"
" let NERDTreeQuitOnOpen = 1
" if exists('g:loaded_webdevicons')
"     call webdevicons#refresh()
" endif


" }}}
