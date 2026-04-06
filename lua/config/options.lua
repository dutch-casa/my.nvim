-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Disable format-on-save (manual format: <leader>cf)
vim.g.autoformat = false

vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true

-- Inlay hints on by default (type annotations inline)
vim.g.lazyvim_inlay_hints = false

-- Persistent undo across sessions
vim.opt.undofile = true
vim.opt.undolevels = 10000

-- Scroll context — never lose where you are
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Bright orange cursor
vim.opt.guicursor = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
