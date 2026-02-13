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
                clangd = {
                    root_markers = {
                        "compile_flags.txt",
                        "configure.ac",
                        "Makefile",
                        "configure.ac",
                        "configure.in",
                        "config.h.in",
                        "meson_options.txt",
                        "meson.build",
                        "build.ninja",
                        "compile_commands.json",
                        ".git",
                    },
                },
            },
        },
    },
    {
        "ggml-org/llama.vim",
        init = function()
            vim.g.llama_config = {
                enable_at_startup = false,
            }
        end,
    },
}
