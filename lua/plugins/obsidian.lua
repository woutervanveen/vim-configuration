return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/vaults/notes",
      }
    },

    -- change the default location of new notes
    notes_subdir = "0. Inbox",
    -- fix the randomly generated titles, I don't like that
    note_id_func = function(title)
      if title == nil then
        return tostring(os.date("%y%m%d%H%M%S"))
      end
      return title
    end,
    daily_notes = {
      folder = "1. Journal/",
      date_format = "%Y/%m/%Y-%m-%d",
    }

  },


  --
}
