local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("svelte", {
  s("svc", {
    -- <script lang="ts">
    t({ '<script lang="ts">', "" }),
    i(1, "// TypeScript code here"),
    t({ "", "</script>", "", "" }),

    -- Component HTML markup
    i(3, "<!-- Component HTML here -->"),

    -- <style lang="postcss">
    t({ '<style lang="postcss">', "" }),
    i(2, "/* PostCSS styles here */"),
    t({ "", "</style>", "", "" }),
  }),
})
