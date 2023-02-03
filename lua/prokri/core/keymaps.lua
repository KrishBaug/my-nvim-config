vim.g.mapleader = " "


local key = vim.keymap

key.set("n", "<leader>p", ":NvimTreeToggle<CR>")
key.set("n", "<leader>o", ":NvimTreeFocus<CR>")
key.set("n", "<C-a>", "ggvG<End>")
key.set("n", "<leader>s", ":w <CR>")
key.set("n", "<leader>q", ":q <CR>")
key.set("i", "(", "()<Left>")
key.set("i", "'", "''<Left>")
key.set("i", '"', '""<Left>')
key.set("i", "[", "[]<Left>")
key.set("i", "{", "{}<Left>")
key.set("i", "jk", "<Esc>")
key.set("i", "kk", "()<Left>")
key.set('i', 'jn', '""<Left>')
key.set("n", "<leader>t", ":ToggleTerm<CR>")
key.set("n", "<leader>h", ":bp<CR>")
key.set("n", "<leader>l", ":bn<CR>")

