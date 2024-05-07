return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            tsserver = {
                root_dir = require("lspconfig.util").root_pattern(
                    ".git", "tsconfig.json", "jsconfig.json", "package.json"),
            },
        },
    },
}
