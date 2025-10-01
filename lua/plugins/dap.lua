return {
    {
        "mfussenegger/nvim-dap",
        optional = true,
        opts = function()
            local dap = require("dap")
            if not dap.adapters["pwa-chrome"] then
                dap.adapters["pwa-chrome"] = {
                    type = "server",
                    host = "localhost",
                    port = "${port}",
                    executable = {
                        command = "node",
                        args = {
                            vim.fn.expand("$MASON/packages/js-debug-adapter"
                                .. "/js-debug/src/dapDebugServer.js"),
                            "${port}",
                        },
                    },
                }
            end
            for _, lang in ipairs({
                "typescript",
                "javascript",
                "typescriptreact",
                "javascriptreact",
            }) do
                dap.configurations[lang] = dap.configurations[lang] or {}
                table.insert(dap.configurations[lang], 1, {
                    type = "pwa-chrome",
                    request = "launch",
                    name = "Launch Chrome",
                    url = "http://localhost:3000",
                    webRoot = "${workspaceFolder}",
                    sourceMaps = true,
                })
            end
        end,
        keys = {
            { "<leader>do", function() require("dap").step_over() end, desc = "Step Over" },
            { "<leader>dO", function() require("dap").step_out() end, desc = "Step Out" },
        },
    },
    {
        "rcarriga/nvim-dap-ui",
        opts = {
            layouts = {
                {
                    elements = {
                        { id = "scopes", size = 0.25 },
                        { id = "breakpoints", size = 0.25 },
                        { id = "stacks", size = 0.25 },
                        { id = "watches", size = 0.25 },
                    },
                    position = "right",
                    size = 40,
                },
                {
                    elements = {
                        { id = "repl", size = 0.75 },
                        { id = "console", size = 0.25 },
                    },
                    position = "bottom",
                    size = 10,
                },
            },
        },
    },
}
