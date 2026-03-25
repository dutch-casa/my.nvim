-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.opt.colorcolumn = "80"
vim.cmd("highlight! link ColorColumn CursorLine")
vim.opt.termguicolors = true

-- Inlay hints on by default (type annotations inline)
vim.g.lazyvim_inlay_hints = false

-- Persistent undo across sessions
vim.opt.undofile = true
vim.opt.undolevels = 10000

-- Scroll context — never lose where you are
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
