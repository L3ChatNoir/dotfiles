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
      lazy = vim.fn.argc(-1) == 0,
      init = function(plugin)
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
      end,
      cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
      keys = {
        { "<bs>", desc = "Decrement Selection", mode = "x" },
      },
      opts_extend = { "ensure_installed" },
      opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "bash",
          "c",
          "diff",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "jsonc",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "printf",
          "python",
          "query",
          "regex",
          "toml",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
      },
	},
}
