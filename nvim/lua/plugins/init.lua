return {
	
	{ "nvim-tree/nvim-web-devicons" },


	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				view = {
					width = 30,
					side = "right",
				},
				filters = {
					dotfiles = false,
				},
			})

			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "toggle file explorer" })
		end,
	},

	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

}
