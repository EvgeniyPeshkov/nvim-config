return {
    "nvimdev/dashboard-nvim",
    opts = function (_, opts)
        for _, v in ipairs(opts.config.center) do
            if string.find(v.desc, "Restore Session") then
                v.action = 'lua require("persistence").load({last=true})'
            end
        end
    end
}
