return {
  -- Inline type hints from LSP (types first, not comments)
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      diagnostics = {
        underline = true,
        virtual_text = {
          prefix = "●",
          spacing = 4,
        },
        severity_sort = true,
        float = {
          border = "rounded",
          source = true,
        },
      },
    },
  },
}
