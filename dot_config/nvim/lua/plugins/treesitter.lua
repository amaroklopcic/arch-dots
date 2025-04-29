return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
	        ensure_installed = {'c', 'lua', 'go', 'javascript', 'typescript'},
	        sync_install = false,
	        auto_install = true,
	        highlight = {
		        enable = true,
		        additional_vim_regex_highlighting = false,
	        }
        })
    end
}
