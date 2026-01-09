o = { -- ───────────────────────────────────────────────────────────────────────────────────────
  autochdir = true
, clipboard = "unnamedplus"
, confirm = true
, cursorline = true
, expandtab = true
, guicursor = "a:block"
, list = true
, listchars = { trail = "·", tab = "->" }
, number = true
, relativenumber = true
, scrolloff = 999
, shiftwidth = 2
, signcolumn = "yes"
, splitright = true
, tabstop = 2
, termguicolors = true
, undofile = true
, wrap = false
-- ─────────────────────────────────────────────────────────────────────────────────────────────
} for o,v in pairs(o)do vim.opt[o] = v end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
