require("lualine").setup({
	options = {
		theme = "catppuccin",
		section_separator = "",
		components_separator = "",
		icons_enabled = true,
	},
	dependencies = { "nvim-tree/nvim-web-devicons " },
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = { "" },
		lualine_x = { "filetype" },
		lualine_y = { "" },
		lualine_z = { "" },
	},
})
