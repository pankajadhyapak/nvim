-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'numToStr/Comment.nvim'
  use "kyazdani42/nvim-web-devicons"
  use 'nvim-lua/plenary.nvim'
  use "norcalli/nvim-colorizer.lua"
  use "nvim-lua/popup.nvim"
  use "kyazdani42/nvim-tree.lua"
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {"catppuccin/nvim", as = "catppuccin"}
  use 'nvim-lualine/lualine.nvim'
  use "akinsho/bufferline.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-treesitter/nvim-treesitter'
end)

-- one liner setups
require "colorizer".setup(
    {"*"},
    {RGB = true, RRGGBB = true, names = true, RRGGBBAA = true, rgb_fn = true, hsl_fn = true, css = true, css_fn = true}
)

--Enable Comment.nvim
require('Comment').setup()

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
