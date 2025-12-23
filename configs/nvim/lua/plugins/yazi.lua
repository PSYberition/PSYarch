-- ─────────────────────────────────────────────────────────────────────────────────────────────
  local p = { "mikavilpas/yazi.nvim", "yazi"
} local d = { -- ───────────────────────────────────────────────────────────────────────────────
  { "folke/snacks.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons" },
} local c = { -- ───────────────────────────────────────────────────────────────────────────────
  open_for_directories = true,
  floating_window_scaling_factor = 1.0,
  yazi_floating_window_border = "none",
} return { -- ──────────────────────────────────────────────────────────────────────────────────
  p[1], dependencies = d, init = function() require(p[2]).setup(c)
  vim.keymap.set("n","<leader>b","<cmd>Yazi<cr>")
  vim.g.loaded_netrwPlugin = 1
end } -- ───────────────────────────────────────────────────────────────────────────────────────
