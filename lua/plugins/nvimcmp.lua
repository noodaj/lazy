return {
  {
    "hrsh8th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      cmp.cmp.setup({
        mapping = {
          ["<CR>"] = cmp.config.disable,
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),
          ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
          ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        },
      })
    end,
  },
}
