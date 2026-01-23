vim.api.nvim_set_keymap('n', '<leader>z', "<cmd>lua require'centerpad'.toggle{ leftpad = 60, rightpad = 60 }<cr>", { silent = true, noremap = true })
