local lualine = require("lualine")

lualine.setup{
  options = {
    theme = "auto",
    icons_enabled = true,
    section_separators = "",
    component_separators = "|",
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch"},
    lualine_c = {"filename"},
    lualine_x = {"filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"},
  },
  inactive_sections = {
    lualine_c = {"filename"},
    lualine_x = {"location"},
  },
}
