-- return {
--     "williamboman/mason.nvim",
--     dependencies = {
--         "WhoIsSethDaniel/mason-tool-installer.nvim",
--     },

--     config = function()
--         local mason = require("mason")
--         local mason_tool_installer = require("mason-tool-installer")
--         mason.setup({
--             ui = {
--                 icons = {
--                     package_installed = "✓",
--                     package_pending = "➜",
--                     package_uninstalled = "✗",
--                 },
--             },

--         })

--         mason_tool_installer.setup({
--             ensure_installed = {
--                 "prettier", -- prettier formatter
--                 "stylua",   -- lua formatter
--                 "isort",    -- python formatter
--                 "black",    -- python formatter
--                 "pylint",   -- python linter
--                 "eslint_d", -- js linter
--             },
--         })
--     end,
-- }

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
                "cssls",
                "biome",
                "html",
                "jsonls",
                "pyright",
                "tailwindcss",
                "ts_ls",

            },
        })

        -- require("mason-tool-installer").setup({
        --     ensure_installed = {
        --         "prettier",
        --         "stylua", -- lua formatter
        --         "isort",  -- python formatter
        --         "black",  -- python formatter
        --         "pylint",
        --         "eslint_d",
        --         "tsserver"
        --     },
        -- })
    end,
}
