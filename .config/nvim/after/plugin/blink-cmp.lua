vim.api.nvim_create_autocmd('User', {
	pattern = 'BlinkCmpMenuOpen',
	callback = function()
		local ok, copilot = pcall(require, "copilot.suggestion")
		if ok then
			copilot.dismiss()
			vim.b.copilot_suggestion_hidden = true
		end
	end,
})

vim.api.nvim_create_autocmd('User', {
	pattern = 'BlinkCmpMenuClose',
	callback = function()
		vim.b.copilot_suggestion_hidden = false
	end,
})
