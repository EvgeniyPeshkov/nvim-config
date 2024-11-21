return {
    "folke/snacks.nvim",
    opts = function (_, opts)
        for _, v in ipairs(opts.dashboard.preset.keys) do
            if string.find(v.desc, "Restore Session") then
                v.action = ':lua require("persistence").load({last=true})'
                v.section = false
            end
        end
    end
}
