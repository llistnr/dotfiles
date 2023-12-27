-- telescope
local actions = require('telescope.actions')
local vimgrep_args = { unpack(require('telescope.config').values.vimgrep_arguments) }
table.insert(vimgrep_args, '--hidden')
table.insert(vimgrep_args, '--no-ignore')
table.insert(vimgrep_args, '--glob')
table.insert(vimgrep_args, '!**/.git/*')

require('telescope').setup{
    defaults = {
        borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
        layout_strategy = 'vertical',
        layout_config = {
            mirror = true,
            height = 0.7,
            width = 100,
            preview_height = 0.7,
        },
        mappings = {
            i = {
                ['<C-j>'] = actions.move_selection_next,
                ['<C-k>'] = actions.move_selection_previous,
                ['J'] = actions.preview_scrolling_down,
                ['K'] = actions.preview_scrolling_up,
                ['<esc>'] = actions.close,
            }
        },
        vimgrep_arguments = vimgrep_args,
    },
    pickers = {
        find_files = {
            find_command = { 'rg', '--files', '--hidden', '--no-ignore', '--glob', '!**/.git/*' },
        },
    },
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files)
vim.keymap.set('n', '<leader>l', builtin.live_grep)
vim.keymap.set('n', '<leader>b', builtin.buffers)
vim.keymap.set('n', '<leader>h', builtin.help_tags)

-- lazygit
vim.g.lazygit_floating_window_scaling_factor = 1.0
vim.keymap.set('n', '<leader>g', vim.cmd.LazyGit)

