local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tp', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ts', function()
	builtin.grep_string({ search = vim.fn.input(" > ")});
end)
