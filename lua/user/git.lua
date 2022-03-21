-- Gitsigns
require("gitsigns").setup {
    current_line_blame = true,
    signs = {
        add = {hl = "GitGutterAdd", text = "+"},
        change = {hl = "GitGutterChange", text = "~"},
        delete = {hl = "GitGutterDelete", text = "_"},
        topdelete = {hl = "GitGutterDelete", text = "‾"},
        changedelete = {hl = "GitGutterChange", text = "~"}
    }
}
