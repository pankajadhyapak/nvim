vim.api.nvim_set_keymap("n", "T", ":tabnew<CR>", {noremap = true, silent = true}) -- new tab
vim.api.nvim_set_keymap("n", "X", ":BufferLinePickClose<CR>", {noremap = true, silent = true}) -- close tab

-- move between tabs
vim.api.nvim_set_keymap("n", ".", [[<Cmd>BufferLineCycleNext<CR>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", ",", [[<Cmd>BufferLineCyclePrev<CR>]], {noremap = true, silent = true})
