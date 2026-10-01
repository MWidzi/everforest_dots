require("colors")

hl.config({
    dwindle = {
        force_split = 0,
        smart_split = true,
    },

    scrolling = {
        column_width = 0.333,
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        font_family = "Mononoki Nerd Font",
    },

    ---------------------
    --- LOOK AND FEEL ---
    ---------------------

    general = {
        gaps_in                       = 6,
        gaps_out                      = 16,

        border_size                   = 3,

        ["col.active_border"]         = green,
        ["col.inactive_border"]       = bg_2,
        ["col.nogroup_border_active"] = green,

        layout                        = "scrolling",

        resize_on_border              = true,
        extend_border_grab_area       = 30,
        hover_icon_on_border          = true,

        allow_tearing                 = false,
    },

    decoration = {
        rounding = 0,
        rounding_power = 0,

        active_opacity = 1,
        inactive_opacity = 1,
        fullscreen_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 15,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
    },
})
