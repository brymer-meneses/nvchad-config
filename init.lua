local autocmd = vim.api.nvim_create_autocmd
local new_cmd = vim.api.nvim_create_user_command
local opt = vim.opt

opt.cmdheight = 0
opt.expandtab = true
opt.wrap = false

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
