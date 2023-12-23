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
  c = {
    name = "ChatGPT",
      c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
      e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
      g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
      t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
      k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
      d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
      a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
      o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
      s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
      f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
      x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
      r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
      l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
    },
  f = {
    name = "Fun",
    r = { "Make it rain" },
    c = { "Game of life" }
  },
  ["u"] = "which_key_ignore",
  ["e"] = "which_key_ignore" 
}, { prefix = "<leader>" })
