return {
  'williamboman/mason.nvim',
  dependencies = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require 'mason'

    local mason_tool_installer = require 'mason-tool-installer'

    -- enable mason and configure icons
    mason.setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    mason_tool_installer.setup {
      ensure_installed = {
        'prettierd', -- prettier formatter
        'stylua', -- lua formatter
        'astro-language-server',
        'tailwindcss-language-server',
      },
    }
  end,
}
