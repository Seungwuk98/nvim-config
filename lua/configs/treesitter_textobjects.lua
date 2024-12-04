local configs = require "nvim-treesitter.configs"

configs.setup {
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
        ["ap"] = { query = "@parameter.outer", desc = "Select function parameter" },
        ["ip"] = { query = "@parameter.inner", desc = "Select function parameter" },
      },
      include_surrounding_whitespace = true,
    },
  },
}
