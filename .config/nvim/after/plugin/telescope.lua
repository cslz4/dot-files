local builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set("n", "<leader>sf", function()
	require("telescope.builtin").find_files()
end, { desc = "Telescope find_files" })

keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })

keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })
