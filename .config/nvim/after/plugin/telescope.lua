local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>l', builtin.current_buffer_fuzzy_find, { desc = 'Telescope buffers' })
vim.opt.winblend = 0
