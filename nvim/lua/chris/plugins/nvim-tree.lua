return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local nvimtree = require("nvim-tree")
    local keymap = vim.keymap

    nvimtree.setup({
      view = {
        width = 40,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false
          }
        }
      }
    })

    keymap.set("n", "<leader>-", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle the file explorer" })
    keymap.set("n", "-", "<cmd>NvimTreeFocus<CR>", { desc = "Switch focus to the file explorer" })
  end
}
