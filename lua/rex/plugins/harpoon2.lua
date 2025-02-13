return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" }, -- Add Telescope as a dependency
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		-- Telescope integration function
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		-- Standard Harpoon keybindings
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon: Add file" })
		vim.keymap.set("n", "<C-e>", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open Harpoon with Telescope" }) -- Updated keymap

		vim.keymap.set("n", "<C-j>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon: Jump to File 1" })
		vim.keymap.set("n", "<C-k>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon: Jump to File 2" })
		vim.keymap.set("n", "<C-l>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon: Jump to File 3" })
		vim.keymap.set("n", "<C-;>", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon: Jump to File 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-J>", function()
			harpoon:list():prev()
		end, { desc = "Harpoon: Previous File" })
		vim.keymap.set("n", "<C-S-K>", function()
			harpoon:list():next()
		end, { desc = "Harpoon: Next File" })

		-- Toggle quick menu
		vim.keymap.set("n", "<C-u>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
	end,
}
