return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "swiftlint" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          capabilities = {
            workspace = {
              didChangeWatchedFiles = {
                dynamicRegistration = true,
              },
            },
          },
        },
      },
    },
  },
  {
    {
      "mfussenegger/nvim-lint",
      optional = true,
      dependencies = "williamboman/mason.nvim",
      opts = {
        linters_by_ft = { swift = { "swiftlint" } },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = { swift = { "swiftformat", "swift_format" } },
    },
  },
  -- {
  --   "wojciech-kulik/xcodebuild.nvim",
  --   dependencies = {
  --     "nvim-telescope/telescope.nvim",
  --     "MunifTanjim/nui.nvim",
  --     "folke/snacks.nvim", -- (optional) to show previews
  --     "stevearc/oil.nvim", -- (optional) to manage project files
  --     "nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
  --   },
  --   config = function()
  --     require("xcodebuild").setup({
  --       -- put some options here or leave it empty to use default settings
  --     })
  --   end,
  -- },
}
