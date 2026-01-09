-- ─────────────────────────────────────────────────────────────────────────────────────────────
vim.api.nvim_create_autocmd("TextYankPost",{
  desc = "Highlight when yanking",
  group = vim.api.nvim_create_augroup("highlight-yank", {clear = true}),
  callback = function() vim.highlight.on_yank() end,
}) -- ──────────────────────────────────────────────────────────────────────────────────────────
vim.api.nvim_create_autocmd("BufEnter",{
  pattern = "*",
  callback = function() vim.opt_local.formatoptions:remove({ "o", "r" }) end,
}) -- ──────────────────────────────────────────────────────────────────────────────────────────
