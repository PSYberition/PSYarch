-- ─────────────────────────────────────────────────────────────────────────────────────────────
  local p = { "RRethy/base16-nvim", "base16-colorscheme"
} local d = { -- ───────────────────────────────────────────────────────────────────────────────
} local c = { -- ───────────────────────────────────────────────────────────────────────────────
} return { -- ──────────────────────────────────────────────────────────────────────────────────
  p[1], dependencies = d, config = function() require(p[2]).with_config(c)
    -- local comment = vim.api.nvim_get_hl(0, {name = "Comment"})
    -- local strings = vim.api.nvim_get_hl(0, {name = "String" })
    -- vim.api.nvim_set_hl(0, "Comment", vim.tbl_extend("force", vim.api.nvim_get_hl(0, {name = "Comment"}), {italic = true}))
    -- vim.api.nvim_set_hl(0, "String" , vim.tbl_extend("force", vim.api.nvim_get_hl(0, {name = "String" }), {italic = true}))
end } -- ───────────────────────────────────────────────────────────────────────────────────────
