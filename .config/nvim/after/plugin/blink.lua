-- keymaps
vim.keymap.set({ 'n', 'v' }, '<C-;>', function()
	require('blink.chartoggle').toggle_char_eol(';')
end, { desc = 'Toggle ; at eol' })

vim.keymap.set({ 'n', 'v' }, ',', function()
	require('blink.chartoggle').toggle_char_eol(',')
end, { desc = 'Toggle , at eol' })

-- tree keys
vim.keymap.set('n', '<leader>e', '<cmd>BlinkTree reveal<cr>', { desc = 'Reveal current file in tree' })

require('blink').setup({
	chartoggle = { enabled = true },
	tree = { enabled = true },
})
