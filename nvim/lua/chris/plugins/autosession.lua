return {
  "rmagatti/auto-session",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function ()
    require("auto-session").setup {
      auto_session_suppress_dirs = { '~/', '~/gitrepos', '~/Downloads', '/' },
    }

    -- Mapping for searching sessions
    vim.keymap.set("n", "<C-s>", require("auto-session.session-lens").search_session, { noremap = true })
  end
}
