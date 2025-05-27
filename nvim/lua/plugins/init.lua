return {

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require("configs.mason-lint")
        end,
    },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        config = function()
            require("configs.conform")
        end,
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },

    {
        "vimwiki/vimwiki",
        keys = { "<leader>ww", "<leader>ws" },
        init = function()
            vim.g.vimwiki_list = {
                {
                    path = "/run/media/$USER/Arquivos/vimwiki/",
                    syntax = "default",
                    ext = ".wiki",
                },
                { path = "~/vimwiki/", syntax = "default", ext = ".wiki" },
            }
        end,
    },

    {
        "tpope/vim-fugitive",
        cmd = {
            "Git",
            "Gdiffsplit",
            "Gread",
            "Gwrite",
            "Ggrep",
            "GMove",
            "GDelete",
            "GBrowse",
            "GRemove",
            "GRename",
            "Glgrep",
            "Gedit",
            "Gsplit",
            "Gvsplit",
            "Gtabedit",
            "Gcd",
            "Gpwd",
            "Gvdiffsplit",
            "Gpush",
            "Gpull",
            "Gfetch",
            "Gmerge",
            "Gdiff",
            "Glog",
            "Gclog",
            "Gblame",
            "Ggrep",
            "Gmove",
            "Gdelete",
            "Gremove",
            "Grename",
            "Glgrep",
            "Gedit",
            "Gsplit",
            "Gvsplit",
            "Gtabedit",
            "Gcd",
            "Gpwd",
            "Gvdiffsplit",
            "Gpush",
            "Gpull",
            "Gfetch",
            "Gmerge",
            "Gdiff",
            "Glog",
            "Gclog",
            "Gblame",
        },
    },
}
