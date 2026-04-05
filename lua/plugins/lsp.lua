return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      spelling = { enabled = false },
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
      servers = {
        -- Use LLVM's clangd 22.x instead of Apple's 17.x.
        -- Apple clangd chokes on C++23 concepts, consteval, deducing this, etc.
        clangd = {
          cmd = {
            "/opt/homebrew/opt/llvm/bin/clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-flags=-std=c++23",
            "--pch-storage=memory",
            "--all-scopes-completion",
            "--header-insertion-decorators",
          },
        },

        -- gopls: enable shadow analysis (catches subtle rebinding bugs)
        gopls = {
          settings = {
            gopls = {
              analyses = {
                shadow = true,
              },
            },
          },
        },
      },
    },
  },
}
