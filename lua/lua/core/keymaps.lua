vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true
vim.wo.relativenumber = true 
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
vim.keymap.set('n', '<leader>n', ':bn<cr>')
vim.keymap.set('n', '<leader>b', ':bp<cr>')
vim.keymap.set('n', '<leader>t', ':!')
vim.keymap.set('n', '<leader>Q', ':q<cr>')

-- nvim-cmp-configs
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- use space for tabs and whatnot 

vim.opt.expandtab = true


vim.keymap.set('i','<c-s>', '<Esc>:w<CR>')
