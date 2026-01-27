return {
  "max397574/better-escape.nvim",
  event = "InsertEnter",
  config = function()
    require("better_escape").setup({
      timeout = 200, -- Time in ms to wait for the next key
      default_mappings = true, -- Automatically enables jk, kj, etc.
      mappings = {
        i = {
          j = {
            k = "<Esc>",
            j = "<Esc>",
          },
        },
        c = {
          j = {
            k = "<C-c>",
            j = "<C-c>",
          },
        },
        t = {
          j = {
            k = "<C-\\><C-n>",
          },
        },
        v = {
          j = {
            k = "<Esc>",
          },
        },
        s = {
          j = {
            k = "<Esc>",
          },
        },
      },
    })
  end,
}
