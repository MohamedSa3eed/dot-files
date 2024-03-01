require("one_monokai").setup({
    transparent = false,  -- enable transparent window
    colors = {
        --lmao = "#ffffff", -- add new color
        --red = "#880808", -- replace default color
        fg = "#abb2bf",
        bg = "#282c34",
        gray = "#676e7b",
        pink = "#e06c75",
        green = "#98c379", -- function name
        cyan = "#56b6c2",
        aqua = "#61afef",
        yellow = "#e5c07b",
        purple = "#c678dd",
        peanut = "#f6d5a4",
        orange = "#d19a66", --function arguments
        dark_pink = "#ff008c",
        dark_cyan = "#2b8db3",
        red = "#f75f5f",
        dark_red = "#d03770",
        white = "#d7d7ff",
        light_gray = "#9ca3b2",
        dark_gray = "#4b5261",
        vulcan = "#383a3e",   --coursor line
        dark_green = "#2d2e27",
        dark_blue = "#26292f",
        black = "#1e2024",
        none = "NONE",
        --
        -- darken colors
         --fg = "#e6e6e6",
        --bg = "#2c2c2c",
        --gray = "#7e868d",
        --pink = "#f66f77",
        --green = "#a2c86d",  -- function name
        --cyan = "#71c7cf",
        --aqua = "#79b6df",
        --yellow = "#f0cc7e",
        --purple = "#dca0e2",
        --peanut = "#facd7a",
        --orange = "#e5b97e",  -- function arguments
        --dark_pink = "#ff0099",
        --dark_cyan = "#35a7c8",
        --red = "#ff6666",
        --dark_red = "#d03770",
        --white = "#f0f0f0",
        --light_gray = "#c2c8d0",
        --dark_gray = "#5d646d",
        --vulcan = "#43464a",   -- cursor line
        --dark_green = "#373822",
        --dark_blue = "#2e3139",
        --black = "#1e2024",
        --none = "NONE",       
    },
    themes = function(colors)
        -- change highlight of some groups,
        -- the key and value will be passed respectively to "nvim_set_hl"
        return {
            Normal = { bg = colors.bg },
            DiffChange = { fg = colors.red:darken(1.3) },
            ErrorMsg = { fg = colors.pink, standout = true },
            ["@lsp.type.keyword"] = { link = "@keyword" }
        }
    end,
    italics = true, -- enable italics
})
vim.cmd[[colorscheme one_monokai]]
