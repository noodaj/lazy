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
}
