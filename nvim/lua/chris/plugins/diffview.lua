return {
  "sindrets/diffview.nvim",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>go", ":DiffviewOpen<CR>", { desc = "Open diffview plugin" })
    keymap.set("n", "<leader>gc", ":DiffviewClose<CR>", { desc = "Close diffview plugin" })
  end
}
