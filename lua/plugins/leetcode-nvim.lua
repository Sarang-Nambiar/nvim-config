return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        ---@type lc.highlights
        theme = {
            ["alt"] = {
                bg = "#FFFFFF",
            },
            ["normal"] = {
                fg = "#EA4AAA",
            },
        }, 
    },
}
