local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

map("n", "<Leader>nn", "<cmd>NvimTreeToggle<CR>", opts)
map("n", "<Leader>ff", "<cmd>Telescope find_files hidden=true<CR>", opts)
