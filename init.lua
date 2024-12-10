vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
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
vim.opt.termguicolors = true

-- Rust settings

vim.g.rustc_path = os.getenv("HOME") .. "/.cargo/bin/rustc"


vim.cmd([[
  highlight Pmenu guibg=black
	highlight PmenuSel guifg=yellow guibg=black
]])

vim.cmd([[
    hi Normal ctermbg=none guibg=none
]])



vim.opt.guicursor = {
  "n-v-c:block-Cursor/lCursor",  -- Normal, Visual, Command modes: Block cursor
  "i-ci:block-CursorInsert/lCursorInsert",  -- Insert mode: Vertical bar cursor
  "v-c:block-CursorVisual/lCursorVisual"  -- Visual mode: Block cursor
}


vim.cmd([[
  highlight Cursor guifg=green guibg=yellow
  highlight CursorInsert guifg=blue guibg=yellow
  highlight CursorVisual guifg=NONE guibg=red
]])


require("core.keymaps")
require("core.pluggins")
require("core.plugin_config")
require("mason-config")
