-- Additional options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.g.autoformat = false
vim.g.fixeol = true
vim.g.ai_cmp = false
if vim.fn.has("win32") == 1 then
    vim.o.shell = "pwsh.exe"
end
if (vim.g.neovide) then
    vim.o.guifont = "CaskaydiaMono Nerd Font Mono:h10:b"
    vim.g.neovide_cursor_animation_length = 0.01
    vim.g.neovide_cursor_trail_size = 0
    vim.g.neovide_scroll_animation_length = 0.05
    vim.g.neovide_floating_shadow = false
    vim.g.neovide_floating_blur_amount_x = 0.2
    vim.g.neovide_floating_blur_amount_y = 0.2
end
