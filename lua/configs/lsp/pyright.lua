local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
}
