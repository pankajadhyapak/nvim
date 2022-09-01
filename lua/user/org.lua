-- init.lua

-- Load custom tree-sitter grammar for org filetype
require("orgmode").setup_ts_grammar()

-- Tree-sitter configuration
require("nvim-treesitter.configs").setup({
	-- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting,
	ensure_installed = { "org" }, -- Or run :TSUpdate org
})

require("orgmode").setup({
	org_agenda_files = { "~/Dropbox/arch_linux/org/*" },
	org_default_notes_file = "~/Dropbox/arch_linux/org/refile.org",
	diagnostics = false,
	org_agenda_templates = { t = { description = "Task", template = "* TODO %?\n SCHEDULED: %t\n %u" } },
	win_split_mode = 'float',
	mappings = {
		global = {
		  org_agenda = 'gA',
		  org_capture = 'gC'
		},
		capture = {
			org_capture_finalize = '<Leader>w',
			org_capture_refile = 'R',
			org_capture_kill = 'Q'
		  }
	  }
})
