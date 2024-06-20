return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disabled keys
    { "<leader>,", enabled = false, desc = "which_key_ignore" },
    { "<leader>ff", enabled = false, desc = "which_key_ignore" },
    { "<leader>sS", enabled = false, desc = "which_key_ignore" },
    { "<leader>ss", enabled = false, desc = "which_key_ignore" },
    { "<leader><leader>", enabled = false, desc = "which_key_ignore" },
    { "<leader>fr", enabled = false, desc = "which_key_ignore" },
    { "<leader>fR", enabled = false, desc = "which_key_ignore" },
    { "<leader>:", enabled = false, desc = "which_key_ignore" },
    { "<leader>fF", enabled = false, desc = "which_key_ignore" },
    { "<leader>sC", enabled = false, desc = "which_key_ignore" },
    { "<leader>sc", enabled = false, desc = "which_key_ignore" },
    { "<leader>fe", enabled = false, desc = "which_key_ignore" },
    { "<leader>fE", enabled = false, desc = "which_key_ignore" },
    { "<leader>fC", enabled = false, desc = "which_key_ignore" },
    { "<leader>fc", enabled = false, desc = "which_key_ignore" },
    { "<leader>fn", enabled = false, desc = "which_key_ignore" },

    -- start
    { "<leader>`", LazyVim.pick("auto"), desc = "Find files" },
    { "<leader>tr", "<cmd>Telescope resume<cr>", desc = "Resume search" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
    -- git
    { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
    { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
    -- search
    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
    { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
    { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
    { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
    -- live grep
    { "<leader>/", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sG", LazyVim.pick("live_grep", { cwd = false }), desc = "Grep (cwd)" },
    { "<leader>sw", LazyVim.pick("grep_string", { word_match = "-w" }), desc = "Word (Root Dir)" },
    { "<leader>sW", LazyVim.pick("grep_string", { cwd = false, word_match = "-w" }), desc = "Word (cwd)" },
    { "<leader>sw", LazyVim.pick("grep_string"), mode = "v", desc = "Selection (Root Dir)" },
    { "<leader>sW", LazyVim.pick("grep_string", { cwd = false }), mode = "v", desc = "Selection (cwd)" },
    opts = function()
      local actions = require("telescope.actions")

      local open_with_trouble = function(...)
        return require("trouble.providers.telescope").open_with_trouble(...)
      end
      local open_selected_with_trouble = function(...)
        return require("trouble.providers.telescope").open_selected_with_trouble(...)
      end
      local find_files_no_ignore = function()
        local action_state = require("telescope.actions.state")
        local line = action_state.get_current_line()
        LazyVim.pick("find_files", { no_ignore = true, default_text = line })()
      end
      local find_files_with_hidden = function()
        local action_state = require("telescope.actions.state")
        local line = action_state.get_current_line()
        LazyVim.pick("find_files", { hidden = true, default_text = line })()
      end

      return {
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          -- open files in the first window that is an actual file.
          -- use the current window if no other window is available.
          get_selection_window = function()
            local wins = vim.api.nvim_list_wins()
            table.insert(wins, 1, vim.api.nvim_get_current_win())
            for _, win in ipairs(wins) do
              local buf = vim.api.nvim_win_get_buf(win)
              if vim.bo[buf].buftype == "" then
                return win
              end
            end
            return 0
          end,
          mappings = {
            i = {
              ["<a-t>"] = open_selected_with_trouble,
              ["<a-i>"] = find_files_no_ignore,
              ["<a-h>"] = find_files_with_hidden,
              ["<C-Down>"] = actions.cycle_history_next,
              ["<C-Up>"] = actions.cycle_history_prev,
              ["<C-f>"] = actions.preview_scrolling_down,
              ["<C-b>"] = actions.preview_scrolling_up,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<esc><esc>"] = actions.close,
            },
            n = {
              ["q"] = actions.close,
            },
          },
        },
      }
    end,
  },
  opts = {
    defaults = { file_ignore_patterns = { "node_modules", "cypress" } },
  },
}
