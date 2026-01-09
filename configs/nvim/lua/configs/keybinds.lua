-- ─────────────────────────────────────────────────────────────────────────────────────────────
vim.g.mapleader = " " -- map leader
local mc = 96         -- max columns
local keymaps = { -- ───────────────────────────────────────────────────────────────────────────
  {"n","gcJ",":+0put=''<cr>"..mc.."i─<esc>:norm gcc<cr>f ll:lua trunc()<cr>"}
, {"n","gcK",":-1put=''<cr>"..mc.."i─<esc>:norm gcc<cr>f ll:lua trunc()<cr>"}
, {"n","gcL",":+0put=''<cr>"..mc.."i─<esc>:norm gcc<cr>I<bs> <esc>f ll:lua trunc()<cr>"}
-- ─────────────────────────────────────────────────────────────────────────────────────────────
, {"n","H","0:s/^\\s\\+//e<cr><cmd>nohlsearch<cr>i<bs> <esc>j"}, {"n","L","a<bs><cr><esc>k$"}
, {"v","K",":m '<-2<cr>gv=gv"}, {"v","J",":m '>+1<cr>gv=gv"}
, {"n","K",":m .-2<cr>"}, {"n","J",":m .+1<cr>"}
, {"n","k","gk"}, {"n","j","gj"}
-- ─────────────────────────────────────────────────────────────────────────────────────────────
, {"n","<leader>x",":.lua<cr>"}, {"v","<leader>x",":lua<cr>"}
, {"n","<leader><leader>x",":source %<cr>"}
-- ─────────────────────────────────────────────────────────────────────────────────────────────
, {"n","<up>","<c-a>"}, {"n","<down>","<c-x>"}
, {"n","<esc>",":nohlsearch<cr>"}
, {"n","<c-i>",":Inspect<cr>"}
-- ─────────────────────────────────────────────────────────────────────────────────────────────
, {"n","<s-e>","ea"}
} -- ───────────────────────────────────────────────────────────────────────────────────────────
function trunc()
  local l=vim.api.nvim_get_current_line()
  if vim.str_utfindex(l)<=mc then return end
  local c=vim.str_utfindex(l,vim.api.nvim_win_get_cursor(0)[2])
  local e=c+(vim.str_utfindex(l)-mc)
  local s=vim.str_byteindex(l,c)
  local f=e>#l and #l+1 or vim.str_byteindex(l,e)
  vim.api.nvim_set_current_line(l:sub(1,s-1)..l:sub(f))
end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
for _,v in ipairs(keymaps)do vim.keymap.set(v[1],v[2],v[3],{noremap=true,silent=true})end
-- ─────────────────────────────────────────────────────────────────────────────────────────────
