return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local node = ls.snippet_node
      local t = ls.text_node
      local i = ls.insert_node
      local func = ls.function_node
      local choice = ls.choice_node
      local dynamicn = ls.dynamic_node

      local fmt = require("luasnip.extras.fmt").fmt

      ls.add_snipets("go", {
        s({
          trig = "dumpJson",
          namr = "Dump JSON",
          dscr = "Print out JSON",
        }, {
          t({}),
        }),
      })
    end,
  },
}
