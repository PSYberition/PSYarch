-- ─────────────────────────────────────────────────────────────────────────────────────────────
require('base16-colorscheme').setup({
  base00 = '{{colors.on_secondary_fixed.default.hex}}',
  base01 = '{{colors.on_primary.default.hex}}',
  base02 = '{{colors.inverse_primary.default.hex}}',
  base03 = '{{colors.inverse_primary.default.hex}}',
  base04 = '{{colors.on_primary_container.default.hex}}',
  base05 = '{{colors.on_primary_container.default.hex}}',
  base06 = '#ff0000', -- ???
  base07 = '#00ff00', -- ???
  base08 = '#bb4040',
  base09 = '#F09D6F',
  base0A = '#DBA669',
  base0B = '#99C575',
  base0C = '#8AC7F0',
  base0D = '#A88BDE',
  base0E = '#8D70C2',
  base0F = '#92CFEE',
})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
local function set_hl_mutliple(groups, value)
  for _, v in pairs(groups) do vim.api.nvim_set_hl(0, v, value)end
end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
vim.api.nvim_set_hl(0, 'Visual', {
  bg = '{{colors.primary_container.default.hex}}',
  fg = '{{colors.on_secondary_fixed.default.hex}}',
})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
set_hl_mutliple({ 'TSComment', 'Comment' }, {
  fg = '{{colors.inverse_primary.default.hex}}',
  italic = true,
})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
vim.api.nvim_set_hl(0, 'String', {
  fg = '#8CB878',
  italic = true,
})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
set_hl_mutliple({ 'TSFunction', 'Function' }, {
  fg = '#2FBBDB',
})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
