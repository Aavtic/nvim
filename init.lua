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

-- Set keyword color
vim.api.nvim_set_hl(0, "@keyword", { fg = "yellow", bold = true })
vim.api.nvim_set_hl(0, "@boolean", { fg = "yellow", bold = true })
vim.api.nvim_set_hl(0, "@variable", { fg = "cyan", bold = true })
vim.api.nvim_set_hl(0, "@function", { fg = "#a27aff", bold = true })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = "yellow", bold = true })
vim.api.nvim_set_hl(0, "@function.macro", { fg = "yellow", bold = true })
vim.api.nvim_set_hl(0, "@function.macro", { fg = "yellow", bold = true })

vim.api.nvim_set_hl(0, "@namespace", { fg = "red", bold = true }) -- For serde
vim.api.nvim_set_hl(0, "@type", { fg = "#00FF00", bold = true })    -- For Serialize
vim.api.nvim_set_hl(0, "@constant.type", { fg = "yellow", bold = true })    -- For Serialize
vim.api.nvim_set_hl(0, "@constant", { fg = "yellow", bold = true })    -- For Serialize



vim.cmd([[
  highlight Cursor guifg=green guibg=yellow
  highlight CursorInsert guifg=blue guibg=yellow
  highlight CursorVisual guifg=NONE guibg=red
]])

vim.api.nvim_create_user_command(
  'Compile',
  function(opts)
    local command = opts.args
    if command == "" then
      print("No command specified")
      return
    end
		vim.api.nvim_echo({
				{"Executing ", "None"},
				{command, "String"}
		}, false, {})
    vim.cmd('15 sp')
    vim.cmd('terminal! ' .. command)
  end,
  { nargs = 1 } -- This specifies that the command takes exactly 1 argument
)


vim.api.nvim_create_user_command(
  'HereNow',
  function()
    -- Get the directory of the currently open buffer (file)
    local dir = vim.fn.expand("%:p:h")

    -- Print debug message
    vim.api.nvim_echo({
      {"I'm Here Now ", "None"},
      {dir, "ErrorMsg"}  -- Showing the directory instead of undefined `command`
    }, false, {})

    -- Change directory
    if dir ~= "" then
      vim.cmd('lcd ' .. vim.fn.fnameescape(dir))
    end
  end,
  { nargs = 0 }
)


vim.api.nvim_create_user_command(
  'Trun',
  function(opts)
    local command = opts.args
    if command == "" then
      print("No command specified")
      return
    end
		vim.api.nvim_echo({
				{"Executing ", "None"},
				{command, "ErrorMsg"}
		}, false, {})

    vim.cmd('15 sp')
    vim.cmd('terminal! ' .. command)
  end,
  { nargs = 1 } -- This specifies that the command takes exactly 1 argument
)


vim.api.nvim_create_user_command(
  'CloseAll',
  function()
    vim.cmd(':%bd|e#')
  end,
  { nargs = 0 } -- This specifies that the command takes exactly 1 argument
)


require("core.keymaps")
require("core.pluggins")
require("core.plugin_config")
require("mason-config")

vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:full", "full" }


-- local cmp = require'cmp'
-- cmp.setup({
--   mapping = {
--     ['<C-Space>'] = cmp.mapping.complete(),
--   },
-- })

vim.keymap.set('i', '<C-Space>', '<C-x><C-o>', { noremap = true, silent = true })
