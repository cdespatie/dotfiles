return {
  "preservim/vimux",
  config = function()
    local keymap = vim.keymap

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "python",
      callback = function()
        vim.b.VimuxHeight = 10
        keymap.set("n", "<leader>r", "<cmd>VimuxRunCommand(\"clear; python3 \" . bufname(\"%\"))<CR>", { desc = "Run python3 for the current file" })
      end,
    })
  end
}
