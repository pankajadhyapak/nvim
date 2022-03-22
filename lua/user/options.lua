--Incremental live completion (note: this is now a default on master)
vim.o.inccommand = "nosplit"

--Set highlight on search
vim.o.hlsearch = true

--Make line numbers default
vim.wo.number = true
-- Relative number
vim.wo.relativenumber = true

--Do not save when switching buffers (note: this is now a default on master)
vim.o.hidden = true

-- --Enable mouse mode
vim.o.mouse = "a"

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = "yes"

--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

vim.cmd("filetype plugin indent on")
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.hidden = true
vim.o.whichwrap = "b,s,<,>,[,],h,l"
vim.o.pumheight = 10
vim.o.fileencoding = "utf-8"
vim.o.cmdheight = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
-- vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus"
vim.g.noswapfile = true
vim.o.sidescrolloff = 5
vim.wo.wrap = false
vim.o.cursorline = true

-- Search
vim.o.scrolloff = 10 -- always ten lines below the cursor

-- Tabs
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.tabstop = 4
vim.o.cindent = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.autoindent = true

-- Disable various builtin plugins in Vim that bog down speed
vim.g.loaded_matchparen = 1
vim.g.loaded_matchit = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_shada_plugin = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins = 1

--Set colorscheme
vim.o.termguicolors = true
vim.cmd([[colorscheme catppuccin]])

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Highlight on yank
vim.cmd([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end

  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _lsp
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.formatting()
  augroup end

  augroup _filetypes
    autocmd!
    autocmd FocusLost,WinLeave * :silent! update
  augroup end
]])
