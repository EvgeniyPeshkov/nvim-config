return {
    "petertriho/nvim-scrollbar",
    event = "LazyFile",
    dependencies = { "lewis6991/gitsigns.nvim" },
    opts = {},
    config = function(_, opts)
        require("scrollbar").setup(opts)
        require("scrollbar.handlers.gitsigns").setup()
        -- require("scrollbar.handlers.search").setup()
    end,
}
