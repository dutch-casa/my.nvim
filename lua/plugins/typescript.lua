return {
  -- Translates cryptic TS error codes into readable English
  {
    "dmmulroy/ts-error-translator.nvim",
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    opts = {},
  },

  -- Shows package versions inline in package.json
  {
    "vuki656/package-info.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    ft = "json",
    opts = {},
    keys = {
      { "<leader>cps", function() require("package-info").show() end, desc = "Show package versions" },
      { "<leader>cph", function() require("package-info").hide() end, desc = "Hide package versions" },
      { "<leader>cpu", function() require("package-info").update() end, desc = "Update package" },
      { "<leader>cpd", function() require("package-info").delete() end, desc = "Delete package" },
      { "<leader>cpc", function() require("package-info").change_version() end, desc = "Change version" },
    },
  },

  -- Auto-close and auto-rename JSX/TSX tags
  {
    "windwp/nvim-ts-autotag",
    ft = { "typescriptreact", "javascriptreact", "html", "astro", "vue", "svelte" },
    opts = {},
  },
}
