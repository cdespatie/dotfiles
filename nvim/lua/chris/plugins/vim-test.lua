return {
  "janko-m/vim-test",
  dependencies = {
    "benmills/vimux",
  },
  config = function()
    vim.g["test#strategy"] = "vimux"
    vim.g["test#javascript#runner"] = "nx"
    vim.g.VimuxHeight = 30

    local keymap = vim.keymap
    keymap.set("n", "<leader>t", "<cmd>TestFile<CR>", { desc = "Run tests for the current file" })
  end
}
