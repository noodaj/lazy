return {
  "echasnovski/mini.bufremove",
  keys = {
    { "<leader>bb", enabled = false, desc = "which_key_ignore" },
    { "<leader>bd", enabled = false, desc = "which_key_ignore" },
    { "<leader>bD", enabled = false, desc = "which_key_ignore" },
    { "<leader>be", enabled = false, desc = "which_key_ignore" },
    { "<leader>bl", enabled = false, desc = "which_key_ignore" },
    { "<leader>bo", enabled = false, desc = "which_key_ignore" },
    { "<leader>bP", enabled = false, desc = "which_key_ignore" },
    {
      "<A-w>",
      function()
        local bd = require("mini.bufremove").delete
        if vim.bo.modified then
          local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
          if choice == 1 then -- Yes
            vim.cmd.write()
            bd(0)
          elseif choice == 2 then -- No
            bd(0, true)
          end
        else
          bd(0)
        end
      end,
      desc = "Delete Buffer",
    },
  },
}
