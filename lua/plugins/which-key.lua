return {
    "folke/which-key.nvim",
    keys = {
        { ",", "<cmd>WhichKey<cr>", mode = { "n", "v" }, desc = "Open WhichKey" },
    },
    opts = {
        spec = {
            { "<leader>o", group = "open" },
        },
        icons = { mappings = false },
    },
}
