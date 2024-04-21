return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<A-,>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<A-.>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<A-1>", "<cmd>BufferLineGoToBuffer 1<cr>", desc = "Goto Buffer 1" },
    { "<A-2>", "<cmd>BufferLineGoToBuffer 2<cr>", desc = "Goto Buffer 2" },
    { "<A-3>", "<cmd>BufferLineGoToBuffer 3<cr>", desc = "Goto Buffer 3" },
    { "<A-4>", "<cmd>BufferLineGoToBuffer 4<cr>", desc = "Goto Buffer 4" },
    { "<A-5>", "<cmd>BufferLineGoToBuffer 5<cr>", desc = "Goto Buffer 5" },
    { "<A-6>", "<cmd>BufferLineGoToBuffer 6<cr>", desc = "Goto Buffer 6" },
    { "<A-7>", "<cmd>BufferLineGoToBuffer 7<cr>", desc = "Goto Buffer 7" },
    { "<A-8>", "<cmd>BufferLineGoToBuffer 8<cr>", desc = "Goto Buffer 8" },
    { "<A-9>", "<cmd>BufferLineGoToBuffer 9<cr>", desc = "Goto Buffer 9" },
    { "<A-0>", "<cmd>BufferLineGoToBuffer -1<cr>", desc = "Goto Last Buffer" },
  },
  opts = {
    options = { indicator = { style = "underline" } },
  },
}
