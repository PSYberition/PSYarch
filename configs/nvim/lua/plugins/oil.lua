-- ─────────────────────────────────────────────────────────────────────────────────────────────
local R = "stevearc/oil.nvim"
local M = "oil"
-- ─────────────────────────────────────────────────────────────────────────────────────────────
local D = { -- depens
  "nvim-mini/mini.icons",
} -- ───────────────────────────────────────────────────────────────────────────────────────────
local O = { -- options
} -- ───────────────────────────────────────────────────────────────────────────────────────────
local C = { -- config
  skip_confirm_for_simple_edits = true,
  watch_for_changes = true,
  view_options = { show_hidden = true, },
  float = { border = "rounded", preview_split = "right" },
} -- ───────────────────────────────────────────────────────────────────────────────────────────
return { -- commands
  R, dependencies = D, opts = O, config = function()require(M).setup(C)
  vim.keymap.set("n","-","<cmd>Oil --preview<cr>", { desc = "Open parent directory" })
end } -- ───────────────────────────────────────────────────────────────────────────────────────
