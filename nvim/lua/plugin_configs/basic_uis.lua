-- lualine
require('lualine').setup{
    options = {
        icons_enabled = false,
        disabled_filetypes = { 'packer', 'NvimTree' },
        section_separators = '',
        component_separators = '',
    },
    sections = {
        lualine_b = { 'branch' },
        lualine_x = { 'diff', 'diagnostics' },
    },
    inactive_sections = {
        lualine_x = {},
    },
}

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('nvim-tree').setup{
    hijack_cursor = true,
    disable_netrw = true,
    view = {
        width = 40,
    },
}
local api = require('nvim-tree.api')
vim.keymap.set('n', '<leader>t', api.tree.toggle)

