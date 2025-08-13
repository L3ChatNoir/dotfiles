return {
	-- Colorsheme
	{ "EdenEast/nightfox.nvim" },
	-- Mini.nvim
	{ "echasnovski/mini.nvim", version = false },
	-- LSP
    {"neovim/nvim-lspconfig"},
    {"mason-org/mason.nvim"},
    {"mason-org/mason-lspconfig.nvim"},
	-- Lint
	{
		'dense-analysis/ale',
		config = function()
			-- Configuration goes here.
			local g = vim.g

			g.ale_ruby_rubocop_auto_correct_all = 1
		end
	},
    -- File explorer
    {"nvim-tree/nvim-tree.lua"},
	-- Treesitter
	{
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
      init = function(plugin)
        -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
        -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
        -- no longer trigger the **nvim-treesitter** module to be loaded in time.
        -- Luckily, the only things that those plugins need are the custom queries, which we make available
        -- during startup.
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
