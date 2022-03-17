--!/usr/bin/lua
package.loaded['greetings'] = nill
package.loaded['greetings.awesome-module'] = nill
package.loaded['dev'] = nill

vim.api.nvim_set_keymap('n', ',l', ":luafile dev/init.lua<CR>", {})

Greetings = require('greetings')

vim.api.nvim_set_keymap('n', ',g', ":lua Greetings.greet()<CR>", {})

