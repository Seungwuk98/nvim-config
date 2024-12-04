local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

lspconfig.rust_analyzer.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json"),
  filetypes = { "rust" },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}
