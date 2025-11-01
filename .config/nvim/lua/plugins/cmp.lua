return{
    { "hrsh7th/cmp-nvim-lsp", name = "cmplsp" },
    { "hrsh7th/cmp-buffer", name = "cmpbuffer" },
    { "hrsh7th/cmp-path", name = "cmppath" },
    { "hrsh7th/cmp-cmdline", name = "cmpcmdline" },
    { "hrsh7th/nvim-cmp", name = "cmp" },
    { 'R-nvim/cmp-r', name = "cmp-r" },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "MattiasMTS/cmp-dbee",
                dependencies = {
                    {"kndndrj/nvim-dbee"}
                },
                ft = "sql", -- optional but good to have
                opts = {}, -- needed
            },
        },
        opts = {
            sources = {
                { "cmp-dbee" },
            },
        },
    }
}
