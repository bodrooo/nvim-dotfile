return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "typescript", "javascript", "html", "scss", "css", "astro", "prisma", "python", "json", "json5", "bash",
                "sql"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
