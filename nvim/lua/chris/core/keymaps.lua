vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader><leader>", ".", { desc = "Repeat last action by tapping leader twice" })
keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>s", "<c-W>v", { desc = "Create vertical split" })
keymap.set("n", "<leader>h", "<c-W>s", { desc = "Create horizontal split" })
keymap.set("n", "<leader>w", "<c-W>w", { desc = "Move clockwise through splits" })
keymap.set("n", "<leader>q", "<c-W>W", { desc = "Move counter-clockwise through splits" })

-- Fat finger workarounds for :W and :Q
vim.api.nvim_create_user_command('W', function() pcall(vim.cmd("w")) end, {})
vim.api.nvim_create_user_command('Q', function() pcall(vim.cmd("q")) end, {})
