return {
  "ThePrimeagen/harpoon",
  keys = {
    {
      "<s-m>",
      function()
        require("harpoon"):list():add()
        require("notify")("󱡅  marked file")
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
