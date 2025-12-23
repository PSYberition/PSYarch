local themes = { -- ────────────────────────────────────────────────────────────────────────────
  [ "tokyonight" ] = { "folke/tokyonight.nvim", "tokyonight-night" },
  [ "githubdark" ] = { "project0n/github-nvim-theme", "github_dark_default", "github-theme" },
  [ "catppuccin" ] = { "catppuccin/nvim", "catppuccin-mocha" },
  [ "eenightfox" ] = { "EdenEast/nightfox.nvim", "carbonfox" },
-- ─────────────────────────────────────────────────────────────────────────────────────────────
} local theme = themes[ "tokyonight" ] return {
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  theme[1], name = theme[3], config = function() vim.cmd.colorscheme(theme[2])
  local comment = vim.api.nvim_get_hl(0, {name = "Comment"})
  local strings = vim.api.nvim_get_hl(0, {name = "String" })
  vim.api.nvim_set_hl(0, "Comment", vim.tbl_extend("force", comment, {italic = true}))
  vim.api.nvim_set_hl(0, "String" , vim.tbl_extend("force", strings, {italic = true}))
end } -- ───────────────────────────────────────────────────────────────────────────────────────
