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
require("eyuga.plugins.toggleterm")
require("eyuga.plugins.bufferline")
require("eyuga.plugins.colorizer")

-- Configure neoformat to use clang-format for Mason C code formatting
vim.g.neoformat_c_mason = {
	exe = "clang-format",
	args = { "-assume-filename=%:p", "-style=file" },
	stdin = true,
}

-- Add C++ and CMake filetypes to Neoformat
vim.g.neoformat_cpp = {
	["exe"] = { "clang-format" },
	["h"] = { "clang-format" },
	["cpp"] = { "clang-format" },
}

vim.g.neoformat_cmake = {
	["*"] = { "cmake-format" },
}

-- Add C filetypes to Neoformat
vim.g.neoformat_c = {
	["exe"] = { "clang-format" },
	["h"] = { "clang-format" },
	["c"] = { "clang-format" },
	["inc"] = { "clang-format" },
}

-- Automatically format Mason C code on save
vim.cmd([[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePost *.cpp,*.h,*.c,*.inc  Neoformat
  augroup END
]])
