-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Survive colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "ColorColumn", { link = "CursorLine" })
    vim.api.nvim_set_hl(0, "Cursor", { fg = "#000000", bg = "#FF8000" })
  end,
})
vim.api.nvim_set_hl(0, "ColorColumn", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "Cursor", { fg = "#000000", bg = "#FF8000" })

-- Strip trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local pos = vim.api.nvim_win_get_cursor(0)
    vim.cmd([[%s/\s\+$//e]])
    vim.api.nvim_win_set_cursor(0, pos)
  end,
})
