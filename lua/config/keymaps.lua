-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- Delete/change to black hole register — don't clobber the clipboard
map({ "n", "v" }, "d", '"_d')
map({ "n", "v" }, "D", '"_D')
map({ "n", "v" }, "c", '"_c')
map({ "n", "v" }, "C", '"_C')
map({ "n", "v" }, "x", '"_x')

-- Explicit cut when you actually want to yank-delete
map({ "n", "v" }, "<leader>d", '"+d', { desc = "Cut to clipboard" })

-- Paste over selection without losing clipboard
map("v", "p", '"_dP')
