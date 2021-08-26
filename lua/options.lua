vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.signcolumn = "yes"
vim.opt.foldmethod = "manual"
vim.opt.timeoutlen = 400
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.whichwrap:append("<>hl")
vim.opt.pumheight = 20
vim.opt.updatetime = 250

local disabled_built_ins = {
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit",
}

for _, plugin in pairs(disabled_built_ins) do
	vim.g["loaded_" .. plugin] = 1
end
