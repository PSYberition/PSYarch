-- ─────────────────────────────────────────────────────────────────────────────────────────────
  local path = vim.fn.stdpath"data" .. "/lazy/lazy.nvim"
  local repo = "https://github.com/folke/lazy.nvim.git"
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  if not(vim.uv or vim.loop).fs_stat(path)then vim.fn.system({"git",
  "clone","--filter=blob:none", "--branch=stable", repo, path})end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  vim.opt.rtp:prepend(path) require"lazy".setup({ spec = {{ import = "plugins" },},})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
