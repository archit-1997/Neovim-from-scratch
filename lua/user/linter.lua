require('lint').linters_by_ft = {
	cpp = { 'cpplint', }
}
require("lint").try_lint()

vim.api.nvim_create_autocmd({ "BufWritePost","BufEnter","InsertLeave" }, {
	callback = function()
		require("lint").try_lint()
		if vim.fn.filereadable(".vale.ini") > 0 then
			require("lint").try_lint({ "vale" })
		end
	end,
})
