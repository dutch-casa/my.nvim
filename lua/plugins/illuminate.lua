return {
  "RRethy/vim-illuminate",
  opts = {
    delay = 200,
  },
  config = function(_, opts)
    require("illuminate").configure(opts)
    require("illuminate").pause()
  end,
}
