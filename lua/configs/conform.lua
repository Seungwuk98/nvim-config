local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang-format" },
    rust = { "rustfn", lsp_format = "fallback" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}

return options
