-- ─────────────────────────────────────────────────────────────────────────────────────────────
  local p = { "nvim-telescope/telescope.nvim", "telescope"
} local d = { -- ───────────────────────────────────────────────────────────────────────────────
  { "nvim-lua/plenary.nvim" }
} local c = { -- ───────────────────────────────────────────────────────────────────────────────
  pickers = { find_files = { theme = "ivy" }}
} return { -- ──────────────────────────────────────────────────────────────────────────────────
  p[1], dependencies = d, config = function() require(p[2]).setup(c)
  local a,b,c = os.getenv("XDG_HOME"), os.getenv("XDG_CONFIG_HOME"), "/etc/nixos/"
  vim.keymap.set("n","<leader>fh",function()require("telescope.builtin").find_files{cwd=a}end)
  vim.keymap.set("n","<leader>fc",function()require("telescope.builtin").find_files{cwd=b}end)
  vim.keymap.set("n","<leader>fn",function()require("telescope.builtin").find_files{cwd=c}end)
end } -- ───────────────────────────────────────────────────────────────────────────────────────
