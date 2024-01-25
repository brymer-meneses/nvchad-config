local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local function on_attach(client, bufnr)
  require("plugins.configs.lspconfig").on_attach(client, bufnr)

  if client.server_capabilities.documentSymbolProvider then
    require("nvim-navic").on_attach(client, bufnr)
  end
end

require("mason-lspconfig").setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,

  ["lua_ls"] = function()
    lspconfig.lua_ls.setup {
      on_attach = on_attach,
      capabilities = capabilities,

      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand "$VIMRUNTIME/lua"] = true,
              [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
              [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
              [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
            },
            maxPreload = 100000,
            preloadFileSize = 10000,
          },
        },
      },
    }
  end,
}
