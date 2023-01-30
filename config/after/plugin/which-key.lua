require("which-key").setup {}

vim.o.timeout = true
vim.o.timeoutlen = 300

local wk = require("which-key")

wk.register({
  t = {
    name = "Telescope",
    g = { "Fuzzy on git files"},
    p = { "Fuzzy on project files"},
    s = { "String Match" }
  },
  l = {
    name = "LSP",
    r = {
      name = "Rust",
      a = { "Code Action" },
      h = { "Hover" },
      ["u"] = "which_key_ignore" 
    }
  },
  ["u"] = "which_key_ignore",
  ["e"] = "which_key_ignore" 
}, { prefix = "<leader>" })
