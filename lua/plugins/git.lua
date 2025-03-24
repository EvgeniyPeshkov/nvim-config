return {
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "ibhagwan/fzf-lua"
        },
        cmd = { "Neogit" },
        -- stylua: ignore
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", mode = "n", desc = "Neogit" },
            { "<leader>gG", "<cmd>Neogit cwd=%:p:h<cr>", mode = "n", desc = "Neogit (cwd)" },
            { "<leader>gC", "<cmd>Neogit commit<cr>", mode = "n", desc = "Commit" },
        },
        opts = {
            highlight = { italic = false },
            sections = {
                untracked = { folded = true },
                unstaged = { folded = true },
            },
        },
    },
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewOpen", "DiffviewFileHistory" },
        -- stylua: ignore
        keys = {
            { "<leader>og", "<cmd>DiffviewOpen<cr>", mode = "n", desc = "Open Diffview" },
            { "<leader>ug", "<cmd>DiffviewToggleFiles<cr>", mode = "n", desc = "Toggle Diffview Files" },
            { "<leader>qg", "<cmd>DiffviewClose<cr>", mode = "n", desc = "Quit Diffview" },
        },
        opts = {
            file_panel = {
                win_config = { position = "right" },
            },
        },
    },
}
