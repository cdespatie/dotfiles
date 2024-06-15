return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = "windwp/nvim-ts-autotag",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autotag = { -- uses nvim-ts-autotag plugin
        enable = true
      },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "graphql",
        "bash",
        "vim",
        "lua",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "ruby",
        "python",
        "c",
      },
    })
  end,
}
