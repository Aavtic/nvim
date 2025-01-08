vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
vim.keymap.set('n', '<leader>t', ':25 sp<cr><c-w>w:term<cr>')
vim.keymap.set('n', '<leader>r', ':res +10<cr>')
vim.keymap.set('n', '<leader>d', ':res -10<cr>')
vim.keymap.set('n', '<leader>T', ':80 vsp<cr><c-w>w:term<cr>')
vim.keymap.set('n', '<leader>R', ':vert res +80<cr>')
vim.keymap.set('n', '<leader>D', ':vert res -80<cr>')
vim.keymap.set('n', '<leader>q', ':bd!<cr>')
vim.keymap.set('n', '<leader>n', ':bn<cr>')
vim.keymap.set('n', '<leader>b', ':bp<cr>')
vim.keymap.set('n', '<leader>h', '@q')
vim.keymap.set('n', '<A-j>', ':m .1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-j>', ':m \'>+2<cr>gv=gv')
vim.keymap.set('v', '<A-k>', ':m \'<-2<cr>gv=gv')


-- nvim-cmp-configs
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- use space for tabs and whatnot 



vim.opt.expandtab = true


vim.keymap.set('i','<c-s>', '<Esc>:w<CR>')

