<p align="center">
  <a href="https://github.com/rose-pine/rose-pine-theme">
    <img src="https://github.com/e-q/okcolors.nvim/blob/main/.github/okcolors.png" />
  </a>
</p>
<p align="center">
    <h2 align="center">OkColors for WezTerm</h2>
</p>

## Usage

To install the theme using the built-in WezTerm plugin support, add these lines
to your `wezterm.lua` file above the `return` block (available variants are
`smooth`, and `sharp`):

```lua
local wezterm = require('wezterm')
local theme = wezterm.plugin.require('https://github.com/crivotz/okcolors-wezterm').smooth
```

If you prefer to install the theme manually, copy `plugin/init.lua` to
`~/.config/wezterm/lua/` (Linux, macOS, and FreeBSD) or the directory containing
`wezterm.exe` (Windows), and rename it to `okcolors.lua`. Load the module and
variant you want to use:

```lua
local theme = require('lua/okcolors').smooth

```

Then, specify the color definitions in your configuration to style the terminal
and tab bar:

```lua
return {
    colors = theme.colors(),
    window_frame = theme.window_frame(), -- needed only if using fancy tab bar
}
```

Make sure `color_scheme` is not specified, because the color scheme overrides
all custom colors defined in the lua configuration.

## Credits to

- [e-q](https://github.com/e-q)
- [okcolors.nvim](https://github.com/e-q/okcolors.nvim)
- [neapsix](https://github.com/neapsix)
