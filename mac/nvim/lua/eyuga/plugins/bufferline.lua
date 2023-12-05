local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = "slant",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = {
		separator = {
			fg = "#1E1E2D",
			bg = "#1E1E2D",
		},
		separator_selected = {
			fg = "#1E1E2D",
		},
		background = {
			fg = "#657b83",
			bg = "#002b36",
		},
		buffer_selected = {
			fg = "#ffffff",
			bold = true,
		},
		fill = {
			bg = "#1E1E2D",
		},
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
