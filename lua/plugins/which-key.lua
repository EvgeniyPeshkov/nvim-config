return {
    "folke/which-key.nvim",
    keys = {
        { ",", "<cmd>WhichKey<cr>", mode = { "n", "v" }, desc = "Open WhichKey" },
    },
    opts = {
        defaults = {
            ["<leader>o"] = { name = "+open" },
        },
    },
}
