-- Auto resize panes when resizing nvim window
local autocmd = vim.api.nvim_create_autocmd
local new_cmd = vim.api.nvim_create_user_command

autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

new_cmd("Config", function()
  local config_folder = vim.fn.stdpath "config"

  vim.cmd("cd" .. config_folder)
  vim.cmd "NvimTreeToggle"

  require("nvchad.tabufline").closeOtherBufs()
end, {})
