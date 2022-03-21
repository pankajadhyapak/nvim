
require "user.options"

require "user.plugins"

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require "user.telescope"
require "user.treesitter"
require "user.nvim-tree"
require "user.indent"
require "user.git"
require "user.status-line"
require "user.keymaps"


