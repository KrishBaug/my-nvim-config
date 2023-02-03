local opt = vim.opt

vim.cmd([[set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾]])

--line numbers

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--line wrapping

opt.wrap = false

--serach settings 
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

-- color settings
opt.termguicolors = true
opt.background = dark
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

