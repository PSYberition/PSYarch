-- ─────────────────────────────────────────────────────────────────────────────────────────────
  require"configs.cmds"
  require"configs.keys"
  require"configs.lazy"
  require"configs.opts"
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  local function source_matugen()
    local matugen_path = os.getenv("HOME") .. "/.config/nvim/matugen.lua"
    local file, err = io.open(matugen_path, "r")
    if err ~= nil then
      vim.cmd('colorscheme base16-catppuccin-mocha')
    else
      dofile(matugen_path)
      io.close(file)
    end
  end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  local function auxiliary_function()
    local matugen_path = os.getenv("HOME") .. "/.config/nvim/matugen.lua"
    source_matugen()
  end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  vim.api.nvim_create_autocmd("Signal", {
    pattern = "SIGUSR1",
    callback = auxiliary_function,
  })
-- ─────────────────────────────────────────────────────────────────────────────────────────────
  auxiliary_function()
-- ─────────────────────────────────────────────────────────────────────────────────────────────
