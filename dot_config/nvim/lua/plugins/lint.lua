return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			lua = { "luac" },
			-- web stuff
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			-- python
			python = { "pylint" },
		}

		-- TODO: what is this???
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- TODO: The "InsertLeave" event (event fired when leaving insert mode) will return
		-- incorrect linting results for linters that do not support linting via stdin (e.g. pylint)

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				-- try_lint without arguments runs the linters defined in `linters_by_ft`
				-- for the current filetype
				lint.try_lint()

				-- You can call `try_lint` with a linter name or a list of names to always
				-- run specific linters, independent of the `linters_by_ft` configuration
				-- require("lint").try_lint("cspell")
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
