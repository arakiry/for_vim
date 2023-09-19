return {
    "phaazon/hop.nvim",
    version = "*",
    lazy = false,
    config = function()
        require("hop").setup()
        local hop = require('hop')
        local hint_positions = require('hop.hint').HintPosition
        vim.keymap.set('', 'f', function()
            hop.hint_char1({ hint_position = hint_positions.END })
        end)
    end,
}
