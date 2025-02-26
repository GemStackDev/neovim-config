return {
	{
		-- "folke/tokyonight.nvim",
		-- priority = 1000, -- make sure to load this before all the other start plugins
		-- config = function()
		-- 	local bg = "#011628"
		-- 	local bg_dark = "#000910"
		-- 	local bg_highlight = "#143652"
		-- 	local bg_search = "#0A64AC"
		-- 	local bg_visual = "#275378"
		-- 	local fg = "#CBE0F0"
		-- 	local fg_dark = "#B4D0E9"
		-- 	local fg_gutter = "#627E97"
		-- 	local border = "#547998"
		-- 	require("tokyonight").setup({
		-- 		style = "night",
		-- 		on_colors = function(colors)
		-- 			colors.bg = bg_dark
		-- 			colors.bg_dark = bg_dark
		-- 			colors.bg_float = bg_dark
		-- 			colors.bg_highlight = bg_highlight
		-- 			colors.bg_popup = bg_dark
		-- 			colors.bg_search = bg_search
		-- 			colors.bg_sidebar = bg_dark
		-- 			colors.bg_statusline = bg_dark
		-- 			colors.bg_visual = bg_visual
		-- 			colors.border = border
		-- 			colors.fg = fg
		-- 			colors.fg_dark = fg_dark
		-- 			colors.fg_float = fg
		-- 			colors.fg_gutter = fg_gutter
		-- 			colors.fg_sidebar = fg_dark
		-- 		end,
		-- 	})
		-- end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},
			})
			vim.cmd([[colorscheme rose-pine]])
			vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#000000" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
		end,
	},
}
