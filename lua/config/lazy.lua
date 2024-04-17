local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    -- Bootstrap lazy.nvim
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
    spec = {
        -- Add LazyVim and import its plugins
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
        -- Import extras modules
        -- { import = "lazyvim.plugins.extras.lang.typescript" },
        -- import/override plugins
        { import = "plugins" },
    },
    defaults = {
        -- Only LazyVim plugins will be lazy-loaded
        lazy = false,
        -- Plugin update settings
        version = false, -- always use the latest git commit
        -- version = "*", -- try installing the latest stable version
    },
    install = { colorscheme = { "tokyonight", "habamax" } },
    checker = { enabled = true }, -- automatically check for plugin updates
    performance = {
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})
