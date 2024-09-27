vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
vim.keymap.set('n', '<leader>n', ':bn<cr>')
vim.keymap.set('n', '<leader>b', ':bp<cr>')
vim.keymap.set('n', '<leader>t', ':!')
vim.keymap.set('n', '<leader>Q', ':q<cr>')
vim.keymap.set('n', '<leader>t', '')

-- nvim-cmp-configs
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- use space for tabs and whatnot 

vim.opt.expandtab = true


