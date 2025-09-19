return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
			},
		},
	},
	init = function()
		vim.g.neotree = {
			auto_close = true,
			auto_open = false,
			auto_update = true,
			update_to_buf_dir = true,
		}
	end,
}
