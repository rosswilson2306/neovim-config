local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.fn.setreg("j", "oconsole.log();" .. esc .. "yyppk$hi'    >>>>    '" .. esc)
vim.fn.setreg("r", "oprintln!();" .. esc .. 'yyppk$hi"    >>>>    "' .. esc)
