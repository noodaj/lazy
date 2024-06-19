-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--moving lines
vim.keymap.set("v", "<C-J>", ":m '>+1<CR>gv=gv", { desc = "Move lines down visual" })
vim.keymap.set("v", "<C-K>", ":m '<-2<CR>gv=gv", { desc = "Move lines up visual" })
vim.keymap.set("n", "<C-J>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("n", "<C-K>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- movement centering NORMAL
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center half page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center half page up" })
vim.keymap.set("n", "n", "nzz", { desc = "Center next" })
vim.keymap.set("n", "N", "Nzz", { desc = "Center prev" })

-- movement centering VISUAL
vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "n", "nzz")
vim.keymap.set("v", "N", "Nzz")

-- best remap of all time
vim.keymap.set("x", "<leader>p", '"_dP')

-- yank x amount of lines
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

-- select all and copy
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select entire file" })
vim.keymap.set("v", "<C-c>", ":%y+<CR>", { desc = "Copy entire file" })

-- replacing all instance of
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- buffer switching
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- center after jumping files
vim.keymap.set("n", "<C-o>", "<C-o>zz", { desc = "Center previous spot" })

vim.keymap.del("<leader>`")
