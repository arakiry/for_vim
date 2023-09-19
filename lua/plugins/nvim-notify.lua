return {
    {
        "rcarriga/nvim-notify",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("notify").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }
}

