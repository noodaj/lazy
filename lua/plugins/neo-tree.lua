return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "left",
      width = 25,
    },
  },
  keys = {
    { "<leader>e", "<leader>fE", desc = "Open cwd", remap = true },
    { "<leader>E", false },
  },
}
