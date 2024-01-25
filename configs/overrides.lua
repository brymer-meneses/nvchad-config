local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "rust",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",
  },
}

-- git support in nvimtree
M.nvimtree = {
  on_attach = function(bufnr)
    local api = require "nvim-tree.api"
    vim.keymap.set(
      "n",
      "l",
      api.node.open.edit,
      { noremap = true, silent = true, nowait = true, buffer = bufnr, desc = "nvim-tree: Edit File" }
    )
    api.config.mappings.default_on_attach(bufnr)
  end,

  git = {
    enable = true,
    ignore = false,
  },

  filters = {
    dotfiles = true,
    exclude = {},
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        git = {
          ignored = "",
        },
      },
    },
  },
}

M.nvdash = {}

return M
