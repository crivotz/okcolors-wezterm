local smooth = {}

local smooth_palette = {
    background = '#16151A',
    foreground = '#c0bdb7',
    overlay = '#302e28',
    overlay_lite = '#3c3a35',
    text = '#f1eee7',
    text_lite = '#fefcf4',
    red = '#cc2443',
    red_lite = '#ff9498',
    yellow = '#886e1f',
    yellow_lite = '#d0b56a',
    cyan = '#128184',
    cyan_lite = '#5ecbce',
    green = '#2e835f',
    green_lite = '#79cca4',
    blue = '#267aa3',
    blue_lite = '#73c2ee',
    purple = '#8061a0',
    purple_lite = '#c7a7ea',
    highlight_high = '#c0bdb7',
}

local smooth_active_tab = {
    bg_color = smooth_palette.overlay,
    fg_color = smooth_palette.text,
}

local smooth_inactive_tab = {
    bg_color = smooth_palette.background,
    fg_color = smooth_palette.overlay_lite,
}

function smooth.colors()
    return {
        foreground = smooth_palette.foreground,
        background = smooth_palette.background,
        cursor_bg = smooth_palette.highlight_high,
        cursor_border = smooth_palette.highlight_high,
        cursor_fg = smooth_palette.background,
        selection_bg = smooth_palette.overlay_lite,
        selection_fg = smooth_palette.background,

        ansi = {
            smooth_palette.overlay,
            smooth_palette.red,
            smooth_palette.green,
            smooth_palette.yellow,
            smooth_palette.blue,
            smooth_palette.purple,
            smooth_palette.cyan,
            smooth_palette.text,
        },

        brights = {
            smooth_palette.overlay_lite,
            smooth_palette.red_lite,
            smooth_palette.green_lite,
            smooth_palette.yellow_lite,
            smooth_palette.blue_lite,
            smooth_palette.purple_lite,
            smooth_palette.cyan_lite,
            smooth_palette.text_lite,
        },

        tab_bar = {
            background = smooth_palette.background,
            active_tab = smooth_active_tab,
            inactive_tab = smooth_inactive_tab,
            inactive_tab_hover = smooth_active_tab,
            new_tab = smooth_inactive_tab,
            new_tab_hover = smooth_active_tab,
            inactive_tab_edge = smooth_palette.overlay_lite, -- (Fancy tab bar only)
        },
    }
end

function smooth.window_frame() -- (Fancy tab bar only)
    return {
        active_titlebar_bg = smooth_palette.background,
        inactive_titlebar_bg = smooth_palette.background,
    }
end

local sharp = {}

local sharp_palette = {
    background = '#010102',
    foreground = '#c0bdb7',
    overlay = '#302e28',
    overlay_lite = '#3c3a35',
    text = '#f1eee7',
    text_lite = '#fefcf4',
    red = '#d01a41',
    red_lite = '#fe989b',
    yellow = '#8b6e09',
    yellow_lite = '#e0b316',
    cyan = '#0c8285',
    cyan_lite = '#19d2d7',
    green = '#17865d',
    green_lite = '#24d998',
    blue = '#0a7caa',
    blue_lite = '#5cc6fc',
    purple = '#9a21e8',
    purple_lite = '#cea1fd',
    highlight_high = '#c0bdb7',
}

local sharp_active_tab = {
    bg_color = sharp_palette.overlay,
    fg_color = sharp_palette.text,
}

local sharp_inactive_tab = {
    bg_color = sharp_palette.background,
    fg_color = sharp_palette.overlay_lite,
}

function sharp.colors()
    return {
        foreground = sharp_palette.text,
        background = sharp_palette.background,
        cursor_bg = sharp_palette.highlight_high,
        cursor_border = sharp_palette.highlight_high,
        cursor_fg = sharp_palette.text,
        selection_bg = sharp_palette.overlay,
        selection_fg = sharp_palette.text,

        ansi = {
            sharp_palette.overlay,
            sharp_palette.red,
            sharp_palette.green,
            sharp_palette.yellow,
            sharp_palette.blue,
            sharp_palette.purple,
            sharp_palette.cyan,
            sharp_palette.text,
        },

        brights = {
            sharp_palette.overlay_lite,
            sharp_palette.red_lite,
            sharp_palette.green_lite,
            sharp_palette.yellow_lite,
            sharp_palette.blue_lite,
            sharp_palette.purple_lite,
            sharp_palette.cyan_lite,
            sharp_palette.text_lite,
        },

        tab_bar = {
            background = sharp_palette.background,
            active_tab = sharp_active_tab,
            inactive_tab = sharp_inactive_tab,
            inactive_tab_hover = sharp_active_tab,
            new_tab = sharp_inactive_tab,
            new_tab_hover = sharp_active_tab,
            inactive_tab_edge = sharp_palette.overlay_lite, -- (Fancy tab bar only)
        },
    }
end

function sharp.window_frame() -- (Fancy tab bar only)
    return {
        active_titlebar_bg = sharp_palette.background,
        inactive_titlebar_bg = sharp_palette.background,
    }
end

return {
    smooth = smooth,
    sharp = sharp,
}
