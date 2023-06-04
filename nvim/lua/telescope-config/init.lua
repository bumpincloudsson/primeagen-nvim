local builtin = require('telescope.builtin')
-- space pf will search through all files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- ctrl p will search through all files in git repo 
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- space ps looks for a specific word in the current file 
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
