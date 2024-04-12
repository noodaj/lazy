return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>,", enabled = false },
    { "<leader>ff", enabled = false },
    { "<leader>`", LazyVim.telescope("files"), desc = "Find files" },
    { "<leader>tr", "<cmd>Telescope resume<cr>", desc = "Resume search" },
    { "<leader>/", LazyVim.telescope("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader>fc", LazyVim.telescope.config_files(), desc = "Find Config File" },
    { "<leader>ff", LazyVim.telescope("files"), desc = "Find Files (Root Dir)" },
    { "<leader>fF", LazyVim.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
    { "<leader>fR", LazyVim.telescope("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
    -- git
    { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
    { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
    -- search
    { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
    { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
    { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
    { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
    { "<leader>sg", LazyVim.telescope("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sG", LazyVim.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
    { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
    { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
    { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>sw", LazyVim.telescope("grep_string", { word_match = "-w" }), desc = "Word (Root Dir)" },
    { "<leader>sW", LazyVim.telescope("grep_string", { cwd = false, word_match = "-w" }), desc = "Word (cwd)" },
    { "<leader>sw", LazyVim.telescope("grep_string"), mode = "v", desc = "Selection (Root Dir)" },
    { "<leader>sW", LazyVim.telescope("grep_string", { cwd = false }), mode = "v", desc = "Selection (cwd)" },
    { "<leader>uC", LazyVim.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with Preview" },
    {
      "<leader>ss",
      function()
        require("telescope.builtin").lsp_document_symbols({
          symbols = require("lazyvim.config").get_kind_filter(),
        })
      end,
      desc = "Goto Symbol",
    },
    {
      "<leader>sS",
      function()
        require("telescope.builtin").lsp_dynamic_workspace_symbols({
          symbols = require("lazyvim.config").get_kind_filter(),
        })
      end,
      desc = "Goto Symbol (Workspace)",
    },
  },
}
