return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    require('telescope').setup({
        pickers = {
            buffers = {
                initial_mode = 'normal',
            },
        },
    }),
}
