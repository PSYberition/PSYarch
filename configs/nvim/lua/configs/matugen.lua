-- ─────────────────────────────────────────────────────────────────────────────────────────────
local function matugen()
  local path = vim.fn.stdpath"config".."/lua/matugen/theme.lua"
  local file, err = io.open(path, "r")
  if err == nil then dofile(path); io.close(file)end
end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
vim.api.nvim_create_autocmd("Signal", {
  pattern = "SIGUSR1",
  callback = matugen,
})
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  matugen()
-- ─────────────────────────────────────────────────────────────────────────────────────────────
