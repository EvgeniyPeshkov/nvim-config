return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                vtsls = {
                    inlay_hints = { enabled = false },
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
