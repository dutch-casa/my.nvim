return {
  -- See the assembly your C++ compiles to, inline in nvim.
  -- Visual select a function, hit <leader>ce, see what the machine sees.
  -- <leader>cE for live-updating assembly as you type.
  {
    "krady21/compiler-explorer.nvim",
    cmd = {
      "CECompile",
      "CECompileLive",
      "CEFormat",
      "CEAddLibrary",
      "CELoadExample",
      "CEOpenWebsite",
      "CEDeleteCache",
      "CEShowTooltip",
      "CEGotoLabel",
    },
    keys = {
      { "<leader>ce", "<cmd>CECompile<cr>", mode = { "n", "v" }, desc = "Compiler Explorer" },
      { "<leader>cE", "<cmd>CECompileLive<cr>", mode = { "n", "v" }, desc = "Compiler Explorer (live)" },
      { "<leader>co", "<cmd>CEOpenWebsite<cr>", desc = "Open godbolt.org" },
    },
    opts = {
      url = "https://godbolt.org",
      infer_lang = true,
      compiler_flags = "-O2 -std=c++23",
      job_timeout_ms = 25000,
    },
  },

  -- Annotates source lines with hotness data from `perf`.
  -- Workflow (Linux): perf record -g ./binary && perf script | <perfanno> -> PerfLoadFlat
  -- On macOS: use `samply record ./binary` instead (opens Firefox profiler).
  {
    "t-troebst/perfanno.nvim",
    cmd = {
      "PerfLoadFlat",
      "PerfLoadCallGraph",
      "PerfAnnotate",
      "PerfToggleAnnotations",
      "PerfHottestLines",
      "PerfHottestSymbols",
      "PerfCycleFormat",
    },
    keys = {
      { "<leader>Pl", "<cmd>PerfLoadFlat<cr>", desc = "Load perf (flat)" },
      { "<leader>Pg", "<cmd>PerfLoadCallGraph<cr>", desc = "Load perf (call graph)" },
      { "<leader>Pa", "<cmd>PerfToggleAnnotations<cr>", desc = "Toggle annotations" },
      { "<leader>Ph", "<cmd>PerfHottestLines<cr>", desc = "Hottest lines" },
      { "<leader>Ps", "<cmd>PerfHottestSymbols<cr>", desc = "Hottest symbols" },
      { "<leader>Pc", "<cmd>PerfCycleFormat<cr>", desc = "Cycle format" },
    },
    config = function()
      local util = require("perfanno.util")
      require("perfanno").setup({
        line_highlights = util.make_bg_highlights("NORMAL", "DiagnosticError", 10),
        vt_highlight = "DiagnosticError",
      })
    end,
  },
}
