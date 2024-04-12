return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
        keys = {
          { "<leader><A-o>", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
        },
      },
    },
  },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- keys[#keys + 1] =
  end,
}
