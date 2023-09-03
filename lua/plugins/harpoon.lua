return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>",        desc = "Add to harpoon" },
        { "<leader>hl", "<cmd>lua require('harpoon.ui').nav_next()<cr>",          desc = "Harpoon next" },
        { "<leader>hh", "<cmd>lua require('harpoon.ui').nav_prev()<cr>",          desc = "Harpoon previous" },
        { "<leader>hq", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Harpoon menu" },
        { "<leader>hr", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>",         desc = "Harpoon first file" },
        { "<leader>ht", "<cmd>lua require('harpoon.term').gotoTerminal(1)<cr>i",  desc = "Harpoon terminal" },
    },
}
