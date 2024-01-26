-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },

  CursorLine = {
    bg = "black2",
  },

  NvDashAscii = { bg = "NONE", fg = "grey_fg" },
  NvDashButtons = { bg = "NONE", fg = "grey_fg" },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
