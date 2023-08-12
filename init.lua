-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("ialexreis")

config = function()
    vim.g.startup_disable_on_startup = true
    require("startup").setup(require("configs.startup_nvim"))
end
