
-- setup with all defaults
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup { -- BEGIN_DEFAULT_OPTS

  disable_netrw = true,
  sort_by = "name",
  update_cwd = false,
  view = {
    width = 30,
  },
  renderer = {
    icons = {
      webdev_colors = true,
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = true,
      resize_window = false,
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
} -- END_DEFAULT_OPTS
