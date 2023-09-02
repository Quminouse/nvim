return {
    "VonHeikemen/lsp-zero.nvim",
    config = function()
        local lsp = require('lsp-zero').preset({})
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
        lsp.setup()
    end,
    keys = {
        { "<leader>f", "<cmd>LspZeroFormat<cr>", desc = "Format" },
    },
    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },

        -- Snippets
        -- { "L3MON4D3/LuaSnip" },
        { "rafamadriz/friendly-snippets" },
    },
    lazy = false,
}
