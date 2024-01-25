---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    -- default nvim-tree toggle
    ["<C-n>"] = "",
   },

  t = {
    -- default nvterm
    -- ["<A-i>"] = "",
    -- ["<A-h>"] = "",
    -- ["<A-v>"] = "",
    -- ["<leader>h"] = "",
    -- ["<leader>v"] = "",

    -- ["<C-x>"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

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

    ["<leader>qx"] = { function() require("nvchad.tabufline").closeAllBufs() end, "Quit buffers" },
  },
  v = {
    [">"] = { ">gv", "indent"},
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

-- more keybinds!

return M
