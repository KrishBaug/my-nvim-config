require("prokri.plugins-setup")  
require("prokri.core.options")
require("prokri.core.colorscheme")
require("prokri.core.keymaps")
require("prokri.plugins.nvim-treesitter")
require("prokri.plugins.nvim-tree")
require("prokri.core.keymaps")
require("prokri.plugins.lualine")
require("prokri.plugins.nvim-cmp")
require("prokri.plugins.lsp.mason")
require("prokri.plugins.lsp.lsp-config")
vim.cmd([[
if has('nvim')
    let g:python3_host_prog = '/usr/bin/python3'
else
    set pyxversion=3
endif
]])
