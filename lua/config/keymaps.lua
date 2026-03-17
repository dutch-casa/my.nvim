-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- Delete/change to black hole — never clobber clipboard
-- Only remap complete commands, not operators (d/c alone break d{motion}/c{motion})
map("n", "dd", '"_dd')
map("n", "D", '"_D')
map("n", "C", '"_C')
map({ "n", "v" }, "x", '"_x')
map({ "n", "v" }, "X", '"_X')
map("v", "d", '"_d')
map("v", "c", '"_c')

-- Explicit cut when you actually want to yank-delete
map({ "n", "v" }, "<leader>d", '"+d', { desc = "Cut to clipboard" })
map("n", "<leader>D", '"+D', { desc = "Cut to end of line" })

-- Paste over selection without losing clipboard
map("v", "p", '"_dP')
