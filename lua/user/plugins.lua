-- Install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("numToStr/Comment.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("nvim-lua/plenary.nvim")
	use("norcalli/nvim-colorizer.lua")
	use("nvim-lua/popup.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("nvim-lualine/lualine.nvim")
	use("akinsho/bufferline.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("lewis6991/gitsigns.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-orgmode/orgmode")
	use("akinsho/org-bullets.nvim")

	use("neovim/nvim-lspconfig") -- Collection of configurations for built-in LSP client
	use("williamboman/nvim-lsp-installer")
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("SirVer/ultisnips")
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("jose-elias-alvarez/null-ls.nvim")
end)

-- one liner setups
require("colorizer").setup({ "*" }, {
	RGB = true,
	RRGGBB = true,
	names = true,
	RRGGBBAA = true,
	rgb_fn = true,
	hsl_fn = true,
	css = true,
	css_fn = true,
})

--Enable Comment.nvim
require("Comment").setup()
