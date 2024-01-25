---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
local opt = vim.opt

opt.cmdheight = 0
opt.expandtab = true
opt.wrap = false

local config_folder = vim.fn.stdpath "config"

M.ui = {
  theme = "ashes",
  theme_toggle = { "ashes", "one_light" },

  extended_integrations = {"dap", "navic"},

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,
    buttons = {
      { "  Config" , "", "cd" .. config_folder .. "| NvimTreeToggle"},
      { "  Find File", "", "Telescope find_files" },
      { "󰈚  Recent Files", "", "Telescope oldfiles" },
      { "󰈭  Find Word", "", "Telescope live_grep" },
      { "  Bookmarks", "", "Telescope marks" },
      { "  Themes", "", "Telescope themes" },
      { "  Mappings", "", "NvCheatsheet" },
    }
  },

}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
