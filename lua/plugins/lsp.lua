return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                vtsls = {
                    root_dir = require("lspconfig.util").root_pattern(
                        ".git", "tsconfig.json", "jsconfig.json", "package.json"),
                },
            },
            inlay_hints = { enabled = false },
        },
    }
}
