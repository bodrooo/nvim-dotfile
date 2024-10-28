return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
    },
    keys = {
        { "<leader>e", "<CMD>Neotree position=right toggle<CR>" },
        { "<leader>r", "<CMD>Neotree focus<CR>" }
    },
    opts = {
        filesystem = {
            filtered_items = {
                --visible = true,
                hide_dotfiles = false,
                hide_gitignored = true,
                hide_by_name = {
                    ".github",
                    ".gitignore",
                    "package-lock.json",
                    "node_modules"
                },
                never_show = { ".git" },
            },
        },
    },
}
