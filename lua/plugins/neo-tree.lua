return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "left",
      width = 25,
    },
  },
  keys = {
    { "<leader>e", desc = "Open file tree", remap = true },
    { "<leader>E", enabled = false },
  },
}
