return {
    "vanducng/nvim-dbee",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    build = function()
        -- Install tries to automatically detect the install method.
        -- if it fails, try calling it with one of these parameters:
        --    "curl", "wget", "bitsadmin", "go"
        require("dbee").install("go")
    end,
    config = function()
        require("dbee").setup {
            sources = {
                require("dbee.sources").MemorySource:new({
                    {
                        name = "AP_Fivetran",
                        type = "snowflake",
                        url = "snowflake://thager@RATEGENIUS.us-east-1.snowflakecomputing.com/AP_FIVETRAN?authenticator=snowflake_jwt&privateKeyPath=/Users/thager/.ssh/rsa_key.p8",
                    },
                    {
                        name = "TSG_SF_DATA",
                        type = "snowflake",
                        url = "snowflake://thager@RATEGENIUS.us-east-1.snowflakecomputing.com/TSG_SF_DATA?authenticator=snowflake_jwt&privateKeyPath=/Users/thager/.ssh/rsa_key.p8",
                    },
                }),
                require("dbee.sources").EnvSource:new("DBEE_CONNECTIONS"),
                require("dbee.sources").FileSource:new(vim.fn.stdpath("cache") .. "/dbee/persistence.json"),
            },
            editor = {
                -- see drawer comment.
                window_options = {},
                buffer_options = {},

                -- directory where to store the scratchpads.
                --directory = "path/to/scratchpad/dir",

                -- mappings for the buffer
                mappings = {
                    -- run what's currently selected on the active connection
                    { key = "QQ", mode = "v", action = "run_selection" },
                    -- run the whole file on the active connection
                    { key = "QQ", mode = "n", action = "run_file" },
                    -- run what's under the cursor to the next newline
                    { key = "<CR>", mode = "n", action = "run_under_cursor" },
                },
            },
        }
    end,
}
