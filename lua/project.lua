-- ~/.config/nvim/lua/project.lua

-- Set up the dashboard as the startup screen for projects
vim.api.nvim_command('autocmd VimEnter <buffer> Startup :Startup')
vim.api.nvim_command('autocmd VimEnter <buffer> NvimTreeClose :Startup')

