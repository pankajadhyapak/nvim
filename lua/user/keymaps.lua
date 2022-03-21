local map = vim.api.nvim_set_keymap

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map("n", "T", ":tabnew<CR>", {noremap = true, silent = true}) -- new tab
map("n", "X", ":BufferLinePickClose<CR>", {noremap = true, silent = true}) -- close tab

-- move between tabs
map("n", ".", [[<Cmd>BufferLineCycleNext<CR>]], {noremap = true, silent = true})
map("n", ",", [[<Cmd>BufferLineCyclePrev<CR>]], {noremap = true, silent = true})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
