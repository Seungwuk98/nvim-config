require "nvchad.options"
require "clangd_extensions"

local nvimtree = require "nvim-tree"
nvimtree.setup {
  filters = {
    enable = true,
    git_ignored = false,
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    no_bookmark = false,
    custom = {},
    exclude = {},
  },
  live_filter = {
    prefix = "[FILTER]: ",
    always_show_folders = true,
  },
}

local option = require "nvchad"

vim.cmd "set colorcolumn=80"
