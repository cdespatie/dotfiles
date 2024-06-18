return {
  "janko-m/vim-test",
  dependencies = {
    "benmills/vimux",
  },
  config = function()
    vim.g.VimuxHeight = 20
    vim.g["test#strategy"] = "vimux"

    local keymap = vim.keymap
    keymap.set("n", "<leader>t", "<cmd>TestFile<CR>", { desc = "Run tests for the current file" })
  end
}
