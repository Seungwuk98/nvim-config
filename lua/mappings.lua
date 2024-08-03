require "nvchad.mappings"

local map = vim.keymap.set

local wk = require "which-key"

vim.keymap.del("i", "<C-h>")
vim.keymap.del("i", "<C-j>")
vim.keymap.del("i", "<C-k>")
vim.keymap.del("i", "<C-l>")

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

wk.add {
  { "<C-N>", "<cmd>NvimTreeFocus<CR>", mode = "n", desc = "Focus nvim tree" },
  { "<C-L>", "<cmd>nohlsearch<CR>", mode = "n", desc = "general clear highlights" },
  { "<leader>cs", "<cmd>ClangdSwitchSourceHeader<CR>", mode = "n", desc = "switch source/header" },
  { "<leader>ct", "<cmd>ClangdAST<CR>", mode = "n", desc = "clangd ast" },
  { "<leader>cu", "<cmd>ClangdMemoryUsage<CR>", mode = "n", desc = "clangd memory usage" },
}
