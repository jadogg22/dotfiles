return{
	"bluz71/vim-nightfly-guicolors",
	priority = 1000, -- makes it load first
	config = function()
		-- acually load the boy
		vim.cmd([[colorscheme nightfly]])
	end,
}
