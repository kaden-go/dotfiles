local function map(m, k, v, d)
	vim.keymap.set(m, k, v, d, { noremap = true, silent = true })
end

-- leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map('n', '<leader>R', ':update<CR> :source<CR>', {desc = "Source file"})
map('n', '<leader>w', ':w<CR>', { desc = "Save file"} )
map('n', '<leader>q', ':wq<CR>', { desc = "Quit"})
map('n', '<leader>lf', vim.lsp.buf.format)

-- window management 
map('n', '<leader>ws', ':vsplit<CR>', {desc = "Vertical split window"})
map('n', '<leader>wc', ':close<CR>', {desc = "Close current window"})

