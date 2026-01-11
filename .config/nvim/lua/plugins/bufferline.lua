return {
    "akinsho/bufferline.nvim",
    after = "catppuccin",
    config = function()
        require("bufferline").setup {
            highlights = require("catppuccin.special.bufferline").get_theme()
        }
    end
}
