vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>", {})

vim.keymap.set("n", "<leader>fr", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>fc", "<cmd>CellularAutomaton game_of_life<CR>")
