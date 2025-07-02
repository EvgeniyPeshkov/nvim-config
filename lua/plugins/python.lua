return {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        "mfussenegger/nvim-dap-python",
    },
    lazy = true,
    enabled = true,
    branch = "regexp",
    keys = {
        {
            "<leader>ov",
            "<cmd>VenvSelect<cr>",
            mode = "n",
            desc = "Select VirtualEnv",
        },
        {
            "<leader>qv",
            function() require("venv-selector").deactivate() end,
            mode = "n",
            desc = "Deactivate VirtualEnv",
        },
    },
}
