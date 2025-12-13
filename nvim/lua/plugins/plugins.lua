return {
	-- Colorsheme
	{ "EdenEast/nightfox.nvim" },
	-- Mini.nvim
	{ "echasnovski/mini.nvim", version = false },
    -- File explorer
    {"nvim-tree/nvim-tree.lua"},
	-- Treesitter
	{
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      branch = "main",
      lazy = false,
	},
}
