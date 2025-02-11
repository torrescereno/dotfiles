return {
  "ThePrimeagen/harpoon",
  keys = {
    {
      "<s-m>",
      function()
        require("harpoon"):list():add()
        require("noice").notify("󱡅  marked file", 0, {})
      end,
      desc = "Harpoon File",
    },
    {
      "<tab>",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon Quick Menu",
    },
  },
}
