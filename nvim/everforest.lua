local spec = {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    opts = {
        background = "hard",
        transparent_background_level = 0,
        ui_contrast = "high",
        dim_inactive_windows = true,
    },
}

spec.config = function(_, opts)
    opts = opts or spec.opts
    local ok, everforest = pcall(require, "everforest")
    if ok then
        everforest.setup(opts)
    end

    _G.lualine_theme = {
        normal = {
            a = { fg = "#272E33", bg = "#A7C080", gui = "bold" },
            b = { fg = "#D3C6AA", bg = "#374145" },
            c = { fg = "#9DA9A0", bg = "#2E383C" },
        },
        insert = {
            a = { fg = "#272E33", bg = "#7FBBB3", gui = "bold" },
            b = { fg = "#D3C6AA", bg = "#374145" },
            c = { fg = "#9DA9A0", bg = "#2E383C" },
        },
        visual = {
            a = { fg = "#272E33", bg = "#D699B6", gui = "bold" },
            b = { fg = "#D3C6AA", bg = "#374145" },
            c = { fg = "#9DA9A0", bg = "#2E383C" },
        },
        replace = {
            a = { fg = "#272E33", bg = "#E67E80", gui = "bold" },
            b = { fg = "#D3C6AA", bg = "#374145" },
            c = { fg = "#9DA9A0", bg = "#2E383C" },
        },
        command = {
            a = { fg = "#272E33", bg = "#DBBC7F", gui = "bold" },
            b = { fg = "#D3C6AA", bg = "#374145" },
            c = { fg = "#9DA9A0", bg = "#2E383C" },
        },
        terminal = {
            a = { fg = "#272E33", bg = "#83C092", gui = "bold" },
            b = { fg = "#D3C6AA", bg = "#374145" },
            c = { fg = "#9DA9A0", bg = "#2E383C" },
        },
        inactive = {
            a = { fg = "#7A8478", bg = "#2E383C", gui = "bold" },
            b = { fg = "#7A8478", bg = "#2E383C" },
            c = { fg = "#7A8478", bg = "#272E33" },
        },
    }

    if _G.theme == "everforest" or _G.theme == nil then
        pcall(vim.cmd.colorscheme, "everforest")
    end
end

return spec
