local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  { "elkowar/yuck.vim" , lazy = false },  -- load a plugin at startup

  -- You can use any plugin specification from lazy.nvim
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require "custom.configs.truezen" -- just an example path
    end,
  },

  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"html", "css", "bash"},
    },
  },

  -- if you load some function or module within your opt, wrap it with a function
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = function(...)
              require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "clangd",
        "fortls",
        "golangci-lint-langserver",
        "html-lsp",
        "haskell-language-server",
        "json-lsp",
        "quick-lint-js",
        "typescript-language-server",
        "texlab",
        "marksman",
        "matlab-language-server",
        "pyright",
        "sqlls",
        "taplo",
        "lemminx",
        "yaml-language-server",
        "zls",
        "prettier",
      },
    }
  }
}
return plugins
