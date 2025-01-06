return {
    {
        "mfussenegger/nvim-dap-python",
        config = function()
            local path = require("mason-registry").get_package("debugpy"):get_install_path()
            local exe = path .. "/venv/bin/python"
            if vim.fn.has("win32") == 1 then
                exe = path .. "/venv/Scripts/pythonw"
            end
            local dap = require("dap-python")
            dap.resolve_python = function()
                return vim.fn.exepath("python")
            end
            dap.setup(exe)
        end,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            handlers = {
                python = function(config)
                    config.configurations = {}
                    config.adapters = {}
                end
            }
        }
    },
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
