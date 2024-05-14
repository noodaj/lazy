local lsp_kinds = {
  Text = { " ", "TSText" },
  Function = { "", "TSFunction" },
  Method = { " ", "TSMethod" },
  Constructor = { "", "TSConstructor" },
  Field = { "", "TSField" },
  Variable = { "", " TSVariable" },
  Class = { "", "TSClass" },
  Interface = { "", "TSInterface" },
  Module = { "", "TSModule" },
  Property = { "", "TSProperty" },
  Unit = { "", "TSUnit" },
  Value = { " ", "TSValue" },
  Enum = { "", "TSEnum" },
  Keyword = { "", "TSKeyword" },
  Snippet = { "", "TSSnippet" },
  Color = { "", "TSColor" },
  File = { "", "TSFile" },
  Reference = { "", "TSReference" },
  Folder = { "", "TSFolder" },
  EnumMember = { "", "TSEnumMember" },
  Constant = { "", "TSConstant" },
  Struct = { "", "TSStruct" },
  Event = { "", "TSEvent" },
  Operator = { "", "TSOperator" },
  TypeParameter = { "", "TSTypeParameter" },
}

return {
  {
    "hrsh8th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      cmp.setup({
        formatting = {
          fields = { "kind", "abbr", "menu" },
          format = function(_, vim_item)
            vim_item.kind = lsp_kinds[vim_item.kind][1]
            print("Icon: ", lsp_kinds[vim_item.kind][1])
            return vim_item
          end,
          expandable_indicator = true,
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
