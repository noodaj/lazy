return {
  {
    "hrsh8th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      cmp.setup({
        formatting = {
          fields = {
            "kind",
            "abbr",
            "menu",
          },
          expandable_indicator = false,
          format = function(entry, item)
            local icons = require("lazyvim.config").icons.kinds
            if icons[item.kind] then
              item.menu = " "
                .. (({ nvim_lsp = "lsp", cmp_git = "git" })[entry.source.name] or entry.source.name)
                .. " : "
                .. item.kind
              item.kind = nil
            end
            return item
          end,
        },
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
