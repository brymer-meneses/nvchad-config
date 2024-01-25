local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

require("mason-lspconfig").setup_handlers({
  function (server_name)

    -- lua_ls is already setup
    if server_name == "lua_ls" then
      return
    end

    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities
    }
  end
})

