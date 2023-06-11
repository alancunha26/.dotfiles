local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

local mt_setup, mt = pcall(require, "telescope.actions.mt")
if not mt_setup then
	return
end

local mod = {}
local transform_mod = mt.transform_mod

mod.open_in_nvim_tree = function(prompt_bufnr)
	local cur_win = vim.api.nvim_get_current_win()
	vim.cmd("NvimTreeFindFile")
	vim.api.nvim_set_current_win(cur_win)
end

mod = transform_mod(mod)

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				["<CR>"] = actions.select_default + mod.open_in_nvim_tree,
			},
			n = {
				["<CR>"] = actions.select_default + mod.open_in_nvim_tree,
			},
		},
	},
})

telescope.load_extension("fzf")
