return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "left",
      width = 25,
    },
    default_component_configs = {
      git_status = {
        symbols = {
          --change
          added = "✚",
          modified = "★",
          deleted = " ",
          renamed = "➜",
          --status
          untracked = "★",
          unstaged = "✗",
          staged = "✓",
          ignored = "◌",
        },
      },
    },
  },
  keys = {
    -- disabled
    { "<leader>E", enabled = false },
    -- enabled
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Open file tree",
      remap = true,
    },
  },
}
