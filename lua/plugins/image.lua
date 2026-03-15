return {
  -- Disable image.nvim to avoid conflicts with snacks.nvim image module
  { "3rd/image.nvim", enabled = false },

  -- Configure snacks.nvim image viewer for buffer rendering
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = false,
      },
    },
  },
}
