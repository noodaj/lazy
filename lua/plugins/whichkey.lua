return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        {
          mode = { "n", "v" },
          { "<leader>f", group = "+File search" },
          { "<leader>t", group = "Telescope" },
          { "<leader>r", group = "Replace word" },
          { "<leader><tab>", hidden = true },
          { "<leader>K", hidden = true },
          { "<leader>y", hidden = true },
          { "<leader>b", hidden = true },
          { "<leader>L", hidden = true },
          { "]", hidden = true },
          { "[", hidden = true },
          { "<C-F>", hidden = true },
          { "<C-B>", hidden = true },
        },
      },
    },
  },
}
