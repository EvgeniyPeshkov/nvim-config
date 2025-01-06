return {
    {
        "folke/snacks.nvim",
        opts = function(_, opts)
            for _, v in ipairs(opts.dashboard.preset.keys) do
                if string.find(v.desc, "Restore Session") then
                    v.action = ':lua require("persistence").load({last=true})'
                    v.section = false
                end
            end
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = { window = { position = "right" } },
    },
    {
        "folke/which-key.nvim",
        keys = {
            { ",", "<cmd>WhichKey<cr>", mode = { "n", "v" }, desc = "Open WhichKey" },
        },
        opts = {
            preset = "classic",
            icons = { mappings = false },
            spec = {
                { "<leader>o", group = "open" },
            },
        },
    },
    {
        "petertriho/nvim-scrollbar",
        event = "LazyFile",
        dependencies = { "lewis6991/gitsigns.nvim" },
        opts = {},
        config = function(_, opts)
            require("scrollbar").setup(opts)
            require("scrollbar.handlers.gitsigns").setup()
            -- require("scrollbar.handlers.search").setup()
        end,
    },
    {
        "akinsho/bufferline.nvim",
        keys = {
            { "gb", "<cmd>BufferLinePick<cr>", mode = "n", desc = "Pick Buffer" },
            { "<B", "<cmd>BufferLineMovePrev<cr>", mode = "n", desc = "Move Buffer" },
            { ">B", "<cmd>BufferLineMoveNext<cr>", mode = "n", desc = "Move Buffer" },
        },
        opts = {
            options = {
                style_preset = require("bufferline").style_preset.no_italic,
                always_show_bufferline = true,
            },
        },
    }
}
