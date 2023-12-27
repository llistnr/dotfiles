-- nvim-cmp
local cmp = require('cmp')
cmp.setup{
    snippet = {
	    expand = function(args)
	        vim.fn['vsnip#anonymous'](args.body)
	    end,
    },
    mapping = cmp.mapping.preset.insert{
        ['<C-k>'] = cmp.mapping.scroll_docs(-4),
        ['<C-j>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    },
    sources = cmp.config.sources{
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'buffer' },
    }
}

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' },
    }, {
        { name = 'buffer' },
    })
})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources{
        { name = 'path' }
    }, {
        { name = 'buffer' },
    }
})

-- lsconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['pyright'].setup{
    capabilities = capabilities
}
require('lspconfig')['tsserver'].setup{
    capabilities = capabilities
}

vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration)
vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>R', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>H', vim.lsp.buf.hover, { buffer = 0 })

-- diagnostic
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, options)
vim.diagnostic.config{
    virtual_text = false,
    float = {
        header = false,
        border = 'single',
    },
}

