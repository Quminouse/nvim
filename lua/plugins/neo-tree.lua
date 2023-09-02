return {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                width = 20,
            },
        });
    end,
    lazy = false,
}
