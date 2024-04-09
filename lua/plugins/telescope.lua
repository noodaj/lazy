return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>,", enabled = false },
    { "<leader>ff", enabled = false },
    { "<leader>`", LazyVim.telescope("files"), desc = "Find files" },
  },
}
