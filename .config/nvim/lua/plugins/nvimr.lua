return{
    "R-nvim/R.nvim",
     -- Only required if you also set defaults.lazy = true
    lazy = false,
    -- R.nvim is still young and we may make some breaking changes from time
    -- to time (but also bug fixes all the time). If configuration stability
    -- is a high priority for you, pin to the latest minor version, but unpin
    -- it and try the latest version before reporting an issue:
    -- version = "~0.1.0"
    config = function()
        -- Create a table with the options to be passed to setup()
        ---@type RConfigUserOpts
        local opts = {
            view_df = {
                open_app = ":tabnew %s | CsvViewEnable delimiter=\t display_mode=border header_lnum=1"
            }
        }
        -- Check if the environment variable "R_AUTO_START" exists.
        -- If using fish shell, you could put in your config.fish:
        -- alias r "R_AUTO_START=true nvim"
        if vim.env.R_AUTO_START == "true" then
            opts.auto_start = "on startup"
            opts.objbr_auto_start = true
        end
        require("r").setup(opts)
    end,
}
