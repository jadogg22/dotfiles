local opt = vim.opt 

--line numbers
opt.relativenumber = true -- show relative linve numbers math is hard
opt.number = true -- show absolute line number on cursor line

opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 
opt.expandtab = true
opt.autoindent = true

opt.wrap = false -- screw line wrapping

--searching
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true -- highlight the current cursor line

-- appearance 
--
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false


