return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>f"] = { name = "+File search" },
        ["<leader>t"] = { name = "Telescope" },
        ["<leader>r"] = { name = "Replace word" },
        -- ["y"] = { name = "+Surround", {
        --   siw = { "Inner word" },
        --   s" = {"Make surround word strings"},
        -- } },
        -- ["d"] = {{
        --
        -- }}

        --ignored
        ["<leader><tab>"] = { desc = "which_key_ignore" },
        ["<leader>K"] = { desc = "which_key_ignore" },
        ["<leader>y"] = { desc = "which_key_ignore" },
        ["<leader>b"] = { desc = "which_key_ignore" },
        ["<leader>L"] = { desc = "which_key_ignore" },
        ["]"] = { desc = "which_key_ignore" },
        ["["] = { desc = "which_key_ignore" },
        ["<C-F>"] = { desc = "which_key_ignore" },
        ["<C-B>"] = { desc = "which_key_ignore" },
      },
    },
  },
}
