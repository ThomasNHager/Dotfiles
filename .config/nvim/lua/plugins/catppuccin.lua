return{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        {
            background = {
                light = "latte",
                dark = "mocha",
            },
            term_colors = true,
            integrations = {
                bufferline = true,
                cmp = true,
            },
        }
    }
}
