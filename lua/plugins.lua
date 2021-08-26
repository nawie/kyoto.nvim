local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system {"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path}
  execute("packadd packer.nvim")
end

return require("packer").startup(function(use)
  -- Autocompletion
  use {
		"hrsh7th/nvim-compe",
		event = "InsertEnter",
		config = function()
			require("plug.compe")
		end
	}

  -- Bufferline
	use {
    "akinsho/nvim-bufferline.lua",
    config = function()
      require("plug.bufferline")
    end
  }

  -- Colorscheme
  use "folke/tokyonight.nvim"

  -- Dashboard
  use {
    "glepnir/dashboard-nvim",
    config = function()
      require("plug.dashboard")
    end
  }

  -- Formatter
	use {
		"mhartington/formatter.nvim",
		cmd = "Format",
		config = function()
			require("plug.formatter")
		end
	}

  -- Gitsigns
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plug.gitsigns")
    end
  }

  -- JSXPretty
  use {
		"MaxMEllon/vim-jsx-pretty",
		ft = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact"
		}
	}

  -- LSP
  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"

  -- LSPSaga
  use {
		"glepnir/lspsaga.nvim",
		config = function()
			require("plug.lspsaga")
		end
	}

  -- LSPSignature
  use "ray-x/lsp_signature.nvim"

  -- Lualine
  use {
    "hoob3rt/lualine.nvim",
    config = function()
      require("plug.lualine")
    end
  }

  -- Nvimtree
  use {
    "kyazdani42/nvim-tree.lua",
    cmd = "NvimTreeToggle",
    config = function()
      require("plug.nvimtree")
    end
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = function()
      require("plug.telescope")
    end,
    module = {
      "telescope",
      "telescope.builtin",
      "plugins.telescope"
    }
  }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = function()
      require("plug.treesitter")
    end,
    run = ":TSUpdate"
  }

  -- Modules
  use {
    "nvim-lua/plenary.nvim",
    module = "plenary"
  }
  use {
    "kyazdani42/nvim-web-devicons",
    module = "nvim-web-devicons"
  }

  -- Packer can manage itself
  use "wbthomason/packer.nvim"
end)

