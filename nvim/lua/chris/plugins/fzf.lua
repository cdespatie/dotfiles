return {
  "junegunn/fzf",
  dependencies = "junegunn/fzf.vim",
  name = "fzf",
  build = "./install --all",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<C-p>", "<cmd>Files<CR>", { desc = "Fuzzy search filenames" })
    keymap.set("n", "<C-f>", "<cmd>Rg<CR>", { desc = "Fuzzy search inside files" })
  end
}
