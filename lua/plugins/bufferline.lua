return {
    "akinsho/bufferline.nvim",
    keys = {
        { "gb", "<cmd>BufferLinePick<cr>", mode = "n", desc = "Pick Buffer" },
        { "<B", "<cmd>BufferLineMovePrev<cr>", mode = "n", desc = "Move Buffer" },
        { ">B", "<cmd>BufferLineMoveNext<cr>", mode = "n", desc = "Move Buffer" },
    },
}
