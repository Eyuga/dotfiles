require("eyuga.plugins-setup")
require("eyuga.core.options")
require("eyuga.core.keymaps")
require("eyuga.core.colorscheme")
require("eyuga.plugins.comment")
require("eyuga.plugins.nvim-tree")
require("eyuga.plugins.lualine")
require("eyuga.plugins.telescope")
require("eyuga.plugins.nvim-cmp")
require("eyuga.plugins.lsp.mason")
require("eyuga.plugins.lsp.lspsaga")
require("eyuga.plugins.lsp.lspconfig")
require("eyuga.plugins.lsp.null-ls")
require("eyuga.plugins.autopairs")
require("eyuga.plugins.treesitter")
require("eyuga.plugins.gitsigns")

require("packer").startup(function(use)
	use({ "codota/tabnine-nvim", run = "./dl_binaries.sh" })
end)

require("tabnine").setup({
	disable_auto_comment = true,
	accept_keymap = "<Tab>",
	dismiss_keymap = "<C-]>",
	debounce_ms = 800,
	suggestion_color = { gui = "#808080", cterm = 244 },
	exclude_filetypes = { "TelescopePrompt" },
})

require("lualine").setup({
	tabline = {
		lualine_a = {},
		lualine_b = { "branch" },
		lualine_c = { "filename" },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	sections = { lualine_c = { "lsp_progress" }, lualine_x = { "tabnine" } },
})
