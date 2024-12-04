-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "cmake", "html", "cssls", "tsserver" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

require "configs.lsp.clangd"
require "configs.lsp.tablegen"
require "configs.lsp.pyright"
require "configs.lsp.rust-analyzer"

vim.lsp.inlay_hint.enable(true, {})
