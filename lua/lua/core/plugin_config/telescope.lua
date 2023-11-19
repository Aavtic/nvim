local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-e>', builtin.find_files, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
