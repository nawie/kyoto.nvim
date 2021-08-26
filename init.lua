--  _  __           _                    _           
-- | |/ /   _  ___ | |_ ___   _ ____   _(_)_ __ ___  
-- | ' / | | |/ _ \| __/ _ \ | '_ \ \ / / | '_ ` _ \ 
-- | . \ |_| | (_) | || (_) || | | \ V /| | | | | | |
-- |_|\_\__, |\___/ \__\___(_)_| |_|\_/ |_|_| |_| |_|
-- 	|___/                                        

vim.g.mapleader = " "

require("options")
require("plugins")
require("maps")
require("lsp")

vim.cmd[[colorscheme tokyonight]]
