return {
    {
        "linux-cultist/venv-selector.nvim",
        -- opts = { dap_enabled = false },
        -- stylua: ignore
        keys = {
            {
                "<leader>cV",
                function() require("venv-selector").deactivate_venv() end,
                mode = "n", desc = "Deactivate VirtualEnv",
            },
        },
    },
}
