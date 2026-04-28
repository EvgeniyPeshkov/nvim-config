return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = { ensure_installed = { "slang" } },
    },
    {
        "mason-org/mason.nvim",
        opts = { ensure_installed = { "slang" } },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                slangd = {
                    settings = {
                        slang = {
                            inlayHints = {
                                enable = false,
                            },
                        },
                    },
                },
            },
        },
    },
    {
        "pixelsandpointers/slang.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        ft = "shaderslang",
        opts = {
            auto_format = false,
            inlay_hints = false,
        },
    },
}
