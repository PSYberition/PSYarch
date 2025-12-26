# ──────────────────────────────────────────────────────────────────────────────────────────────
  $env.config.show_banner = false
# ──────────────────────────────────────────────────────────────────────────────────────────────
  $env.PROMPT_COMMAND = { || " " + ($env.PWD | str replace --all $"($env.HOME)" '~' ) }
  $env.PROMPT_COMMAND_RIGHT = { $env.USER + "@" + (sys host | get hostname) + " " }
# ──────────────────────────────────────────────────────────────────────────────────────────────
  $env.config.cursor_shape.vi_insert = "underscore"
  $env.config.cursor_shape.vi_normal = "block"
  $env.PROMPT_INDICATOR_VI_NORMAL = "󰅂 "
  $env.PROMPT_INDICATOR_VI_INSERT = "󰅂 "
  $env.config.edit_mode = "vi"
# ──────────────────────────────────────────────────────────────────────────────────────────────
  $env.config.table.index_mode = "never"
  $env.config.table.show_empty = false
  $env.config.table.mode = "light"
# ──────────────────────────────────────────────────────────────────────────────────────────────
  $env.config.use_kitty_protocol = true
  $env.config.buffer_editor = "nvim"
# ──────────────────────────────────────────────────────────────────────────────────────────────
  alias clear = do { clear; fastfetch | head -n -1 | lolcat }
# ──────────────────────────────────────────────────────────────────────────────────────────────
  clear
# ──────────────────────────────────────────────────────────────────────────────────────────────
