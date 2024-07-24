return {
  "sindrets/diffview.nvim",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { desc = "Open diffview plugin" })
    keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { desc = "Close diffview plugin" })
  end
}
