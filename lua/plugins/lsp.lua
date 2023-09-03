return {
    'VonHeikemen/lsp-zero.nvim',
    config = function()
        local lsp = require('lsp-zero').preset({})
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
        lsp.setup()

        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()

        require('luasnip.loaders.from_vscode').lazy_load()

        cmp.setup({
            sources = {
                { name = 'nvim_lsp' },
                { name = 'nvim_lua' },
                { name = 'buffer' },
                { name = 'luasnip' },
            },
            mapping = {
                ['<tab>'] = cmp_action.tab_complete(),
                ['<s-tab>'] = cmp_action.select_prev_or_fallback(),
                ['<cr>'] = cmp.mapping.confirm({ select = true }),
            }
        })
    end,
    keys = {
        { '<leader>f', '<cmd>LspZeroFormat<cr>', desc = 'Format' },
    },
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },

        -- Autocompletion
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-nvim-lua' },
        { 'hrsh7th/nvim-cmp' },
        { 'saadparwaiz1/cmp_luasnip' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
    },
    lazy = true,
    event = "BufEnter",
}
