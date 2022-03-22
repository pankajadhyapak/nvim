local map = vim.api.nvim_set_keymap
local bufmap = vim.api.nvim_buf_set_keymap
local nsopts = { noremap = true, silent = true }

--Remap space as leader key
map("", "<Space>", "<Nop>", nsopts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "T", ":tabnew<CR>", nsopts) -- new tab
map("n", "X", ":BufferLinePickClose<CR>", nsopts) -- close tab

-- move between tabs
map("n", ".", [[<Cmd>BufferLineCycleNext<CR>]], nsopts)
map("n", ",", [[<Cmd>BufferLineCyclePrev<CR>]], nsopts)

map("n", "<leader>e", ":NvimTreeToggle<CR>", nsopts)
map("n", "<leader>o", "<cmd>NvimTreeFindFile<CR>", nsopts)

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })

--Remap for dealing with word wrap
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
-- Y yank until the end of line  (note: this is now a default on master)
map("n", "Y", "y$", { noremap = true })

-- Telescope
map("n", "<leader><space>", [[<cmd>lua require('telescope.builtin').buffers()<CR>]], nsopts)
map("n", "<leader>f", [[<cmd>lua require('telescope.builtin').find_files()<CR>]], nsopts)
map("n", "<leader>fs", [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], nsopts)
map("n", "<leader>sd", [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], nsopts)
map("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], nsopts)
map("n", "<leader>?", [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], nsopts)
map(
	"n",
	"<leader>eo",
	[[<cmd>lua require('telescope.builtin').find_files({ prompt_title = "<ORG Files>", cwd = "~/Dropbox/arch_linux/org"})<CR>]],
	nsopts
)
map(
	"n",
	"<leader>ed",
	[[<cmd>lua require('telescope.builtin').find_files({ prompt_title = "<dotfiles>", cwd = "~/.dotfiles"})<CR>]],
	nsopts
)

-- LSP mappings
bufmap(0, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", nsopts)
bufmap(0, "n", "gr", "<cmd>Telescope lsp_references<cr>", nsopts)
bufmap(0, "n", "gi", "<cmd>Telescope lsp_implementations<cr>", nsopts)
bufmap(0, "n", "gd", "<cmd>Telescope lsp_definitions<cr>", nsopts)
bufmap(0, "n", "rn", "<cmd>Lspsaga rename<cr>", nsopts)
bufmap(0, "n", "ca", "<cmd>Lspsaga code_action<cr>", nsopts)
bufmap(0, "x", "ca", ":<c-u>Lspsaga range_code_action<cr>", nsopts)
bufmap(0, "n", "K", "<cmd>Lspsaga hover_doc<cr>", nsopts)
