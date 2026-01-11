-- Line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set indent to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Set backup and undo dir
vim.opt.backupdir = os.getenv("HOME") .. "/tmp/"
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Improve default search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Good coloring
vim.opt.termguicolors = true

-- Split to the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- If the line goes over the screen wrap it
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = ">>"

-- Keep 6 lines below at least
vim.opt.scrolloff = 6

-- Leader key
vim.g.mapleader = " "

-- Colorcolumn at 80
vim.opt.colorcolumn = "80"

-- Update faster
vim.opt.updatetime = 50

-- Use nerd fonts
vim.g.have_nerd_font = true

-- Netew winsize
-- @default = 20
vim.g.netrw_winsize = 15

-- Netrw banner
-- 0 : Disable banner
-- 1 : Enable banner
vim.g.netrw_banner = 0

-- Keep the current directory and the browsing directory synced.
-- This helps you avoid the move files error.
vim.g.netrw_keepdir = 0

-- Show directories first (sorting)
vim.g.netrw_sort_sequence = [[[\/]$,*]]

-- Human-readable files sizes
vim.g.netrw_sizestyle = "H"

-- Netrw list style
-- 0 : thin listing (one file per line)
-- 1 : long listing (one file per line with timestamp information and file size)
-- 2 : wide listing (multiple files in columns)
-- 3 : tree style listing
vim.g.netrw_liststyle = 3

-- Show hidden files
-- 0 : show all files
-- 1 : show not-hidden files
-- 2 : show hidden files only
vim.g.netrw_hide = 0

-- Preview files in a vertical split window
vim.g.netrw_preview = 1

-- Open files in split
-- 0 : re-use the same window (default)
-- 1 : horizontally splitting the window first
-- 2 : vertically   splitting the window first
-- 3 : open file in new tab
-- 4 : act like "P" (ie. open previous window)
vim.g.netrw_browse_split = 0

-- Set netrw to open previews to the right of the tree
vim.g.netrw_preview = 1
vim.g.netrw_alto = 0

-- Highlight marked files in the same way search matches are
vim.cmd("hi! link netrwMarkFile Search")

-- Highlight the active line
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Fold text based on treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 4
