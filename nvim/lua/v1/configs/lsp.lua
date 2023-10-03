return {
  "williamboman/mason.nvim",
  event = { "BufReadPre", "VimEnter" },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jayp0521/mason-null-ls.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_null_ls = require("mason-null-ls")

    mason.setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "cssmodules_ls",
        "bashls",
        "clangd",
        "lua_ls",
        "dockerls",
        -- "docker_compose_language_service",
        "eslint",
        -- "golangci_lint_ls",
        "gopls",
        "helm_ls",
        "jsonls",
        "pyright"

      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })
    mason_null_ls.setup({
      ensure_installed = nil,
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true,
    })
  end
}
