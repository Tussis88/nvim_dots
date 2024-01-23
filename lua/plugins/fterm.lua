return {
	-- https://github.com/numToStr/FTerm.nvim
	-- terminale in una float window
	"numToStr/FTerm.nvim",
    config = function ()
        require("FTerm").setup({
        border = "rounded",
        dimensions = {
                height = 0.7,
                width = 0.7,
            }
        })
    end
}
