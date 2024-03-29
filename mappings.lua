---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    -- default nvim-tree toggle
    ["<C-n>"] = "",

    -- default nvterm
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
  },

  t = {
    -- default nvterm
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",

    -- default escape for terminal mode
    ["<C-x>"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<A-j>"] = { "<cmd>resize -2<CR>", "Resize Down" },
    ["<A-k>"] = { "<cmd>resize +2<CR>", "Resize Up" },
    ["<A-h>"] = { "<cmd>vertical resize -2<CR>", "Resize Left" },
    ["<A-l>"] = { "<cmd>vertical resize +2<CR>", "Resize Right" },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<leader>qq"] = { "<cmd> qall <CR>", "Quit NvChad" },
    ["<leader>qQ"] = { "<cmd> wqall <CR>", "Write files and quit NvChad" },
    ["<leader>qE"] = { "<cmd> cquit <CR>", "Error-quit NvChad" },

    ["<leader>qb"] = {
      function()
        require("nvchad.tabufline").closeOtherBufs()
      end,
      "Quit buffers except the current one.",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },

  t = {
    ["<Esc>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
  },
}

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

M.nvterm = {
  n = {
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<leader>h"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },

  t = {
    ["<leader>h"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },

    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<C-h>"] = { "<C-\\><C-N><C-w>h", "Window left" },
    ["<C-l>"] = { "<C-\\><C-N><C-w>l", "Window right" },
    ["<C-j>"] = { "<C-\\><C-N><C-w>j", "Window down" },
    ["<C-k>"] = { "<C-\\><C-N><C-w>k", "Window up" },
  },
}

-- more keybinds!

return M
