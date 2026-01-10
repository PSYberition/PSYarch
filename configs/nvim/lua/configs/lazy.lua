-- ─────────────────────────────────────────────────────────────────────────────────────────────
  local path = vim.fn.stdpath"data" .. "/lazy/lazy.nvim"
  local repo = "https://github.com/folke/lazy.nvim.git"
  local opts = { "git", "clone", "--filter=blob:none", "--branch=stable", repo, path }
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  if (vim.uv or vim.loop).fs_stat(path)then vim.fn.system(opts)end
  vim.opt.rtp:prepend(path) require"lazy".setup({spec = {{import = "plugins"},},})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
