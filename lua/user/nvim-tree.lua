vim.g.nvim_tree_width = 25
vim.g.nvim_tree_indent_markers = 0
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1

vim.g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1,
	folder_arrows = 1,
}

vim.g.nvim_tree_icons = {
	default = "",
	symlink = "",
	git = {
		unstaged = "",
		staged = "",
		unmerged = "",
		renamed = "凜",
		untracked = "",
		deleted = "",
		ignored = "",
	},
	folder = {
		arrow_open = "",
		arrow_closed = "",
		default = "",
		open = "",
		empty = "", -- 
		empty_open = "",
		symlink = "",
		symlink_open = "",
	},
}

require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	ignore_ft_on_setup = { "startify", "dashboard" },
	auto_close = true,
	open_on_tab = false,
	hijack_cursor = true,
	update_cwd = true,
	update_to_buf_dir = { enable = true, auto_open = true },
	diagnostics = {
		enable = false,
		icons = { hint = "", info = "", warning = "", error = "" },
	},
	update_focused_file = { enable = false, update_cwd = false, ignore_list = {} },
	system_open = { cmd = nil, args = {} },
	git = {
		ignore = false,
	},
	filters = {
		dotfiles = true,
		custom = {
			".git",
			"node_modules",
			".cache",
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
			resize_window = false,
			window_picker = {
				enable = true,
				chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				exclude = {
					filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
					buftype = { "nofile", "terminal", "help" },
				},
			},
		},
	},
	view = {
		width = 25,
		side = "left",
		auto_resize = true,
	},
})
