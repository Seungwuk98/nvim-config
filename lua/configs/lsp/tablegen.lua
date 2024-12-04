local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
require "configs.lsp.clangd"

local llvm_path = "/home/seungwuk98/llvm-project"
local compile_commands_yml = "tablegen_compile_commands.yml"

lspconfig.tblgen_lsp_server.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = {
    "tblgen-lsp-server",
    "--tablegen-compilation-database=" .. compile_commands_yml,
    "--tablegen-compilation-database=" .. llvm_path .. "/" .. compile_commands_yml,
  },
  filetypes = { "tablegen" },
  root_dir = lspconfig.clangd.root_dir,
}
