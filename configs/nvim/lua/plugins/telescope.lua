-- ─────────────────────────────────────────────────────────────────────────────────────────────
local R = "nvim-telescope/telescope.nvim"
local M = "telescope"
-- ─────────────────────────────────────────────────────────────────────────────────────────────
local D = { -- depens
  "nvim-lua/plenary.nvim",
} -- ───────────────────────────────────────────────────────────────────────────────────────────
local O = { -- options
} -- ───────────────────────────────────────────────────────────────────────────────────────────
local C = { -- config
  pickers = { find_files = { hidden = true, theme = "dropdown" }},
} -- ───────────────────────────────────────────────────────────────────────────────────────────
return { -- commands
  R, dependencies = D, opts = O, config = function()require(M).setup(C)
  local l,d,c = os.getenv("HOME").."/.local", os.getenv("HOME").."/.config", vim.fn.getcwd()
  local s = os.getenv("HOME").."/.local/share/Steam/steamapps/compatdata"
  local e,u,t = "/etc", "/usr", "/tmp"
  vim.keymap.set("n","<leader>fl",function()require("telescope.builtin").find_files{cwd=l}end)
  vim.keymap.set("n","<leader>fd",function()require("telescope.builtin").find_files{cwd=d}end)
  vim.keymap.set("n","<leader>fc",function()require("telescope.builtin").find_files{cwd=c}end)
  vim.keymap.set("n","<leader>fs",function()require("telescope.builtin").find_files{cwd=s}end)
  vim.keymap.set("n","<leader>fe",function()require("telescope.builtin").find_files{cwd=e}end)
  vim.keymap.set("n","<leader>fu",function()require("telescope.builtin").find_files{cwd=u}end)
  vim.keymap.set("n","<leader>ft",function()require("telescope.builtin").find_files{cwd=t}end)
end } -- ───────────────────────────────────────────────────────────────────────────────────────
