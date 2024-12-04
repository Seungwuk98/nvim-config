require "nvchad.mappings"

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
  { "<M-C-L>", "<Plug>(copilot-accept-line)", mode = "i", desc = "copilot accept line" },
  { "<M-C-;>", "<Plug>(copilot-accept-word)", mode = "i", desc = "copilot accept word" },
  { "<leader>db", "<cmd> DapToggleBreakpoint <CR>", desc = "Add breakpoint at line" },
  { "<leader>dr", "<cmd> DapContinue <CR>", desc = "Start or continue the debugger" },
  {
    "<F10>",
    function()
      require("dap").step_over()
    end,
    mode = "n",
    desc = "dap step over",
  },
  {
    "<F11>",
    function()
      require("dap").step_into()
    end,
    mode = "n",
    desc = "dap step into",
  },
  {
    "<F12>",
    function()
      require("dap").step_out()
    end,
    mode = "n",
    desc = "dap step out",
  },
  {
    "<F5>",
    function()
      require("dap").continue()
    end,
    mode = "n",
    desc = "dap continue",
  },
  {
    "<leader>dl",
    function()
      require("dap").run_last()
    end,
    mode = "n",
    desc = "dap run last",
  },
}
