vim.g.dashboard_custom_header = {
  "",
  "",
  "",
  "            _/_",
  "          -'a\\",
  "            ||",
  "            |J",
  "            2_\\",
  "           /:::\\",
  "          |;ooo;|",
  "          /Oo@ o\\",
  "         '/o oOo\\`",
  "         /@ O o @\\",
  "        '/.o,()o,\\`",
  "        /().O O  o\\",
  "       / @ , @. () \\",
  "      /,o O' o O o, \\",
  "   _-'. 'o _o _O_o-o.`-_",
  '   `"""---......---"""`',
  "    K Y O T O    N V I M     ",
}

vim.g.dashboard_custom_section = {
  a = {
    description = { "  Find File                  SPC f f" },
    command = "Telescope find_files",
  },
  b = {
    description = { "  Recents                    SPC f o" },
    command = "Telescope oldfiles",
  },
  e = {
    description = { "洛 New Buffer                 SPC g g" },
    command = "enew",
  }
}

vim.g.dashboard_custom_footer = { "KYOTO.NVIM" }
