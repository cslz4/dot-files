require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,  -- This MUST be true
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,  -- Optional but recommended
	},
	indent = {
		enable = true,  -- Optional but recommended
	},
}
