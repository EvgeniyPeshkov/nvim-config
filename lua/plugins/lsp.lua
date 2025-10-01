return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
            servers = {
                vtsls = {
                    root_dir = function(bufnr, ondir)
                        local markers = { ".git", "tsconfig.json", "jsconfig.json", "package.json" }
                        local root = vim.fs.root(bufnr, markers) or vim.fn.getcwd()
                        ondir(root)
                    end,
                },
            },
        },
    },
}
