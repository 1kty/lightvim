-- -- floating diagnostics toggle
local diag_autocmd = nil

-- automatic floating diagnostics
local function enable_diag_float()
	if diag_autocmd then
		return
	end -- already enabled
	diag_autocmd = vim.api.nvim_create_autocmd("CursorHold", {
		callback = function()
			vim.diagnostic.open_float(nil, {
				focusable = false,
				close_events = { "CursorMoved", "BufHidden", "InsertEnter" },
				scope = "line",
			})
		end,
	})
	print("Diagnostics float enabled")
end

-- disable automatic floating diagnostics
local function disable_diag_float()
	if diag_autocmd then
		vim.api.nvim_del_autocmd(diag_autocmd)
		diag_autocmd = nil
		-- Close any floating diagnostics currently visible
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			if vim.api.nvim_win_get_config(win).zindex then
				vim.api.nvim_win_close(win, true)
			end
		end
		print("Diagnostics float disabled")
	end
end

-- toggle function
local function toggle_diag_float()
	if diag_autocmd then
		disable_diag_float()
	else
		enable_diag_float()
	end
end
enable_diag_float()

-- Keymap: <leader>d to toggle
vim.keymap.set("n", "<leader>d", toggle_diag_float, { desc = "Toggle floating diagnostics" })
