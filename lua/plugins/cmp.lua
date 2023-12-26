local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
	}),
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping({
			c = function()
				if cmp.visible() then
					cmp.mapping.select_prev_item()
				else
					cmp.mapping.complete()
				end
			end,
		}),
		["<C-n>"] = cmp.mapping({
			c = function()
				if cmp.visible() then
					cmp.mapping.select_next_item()
				else
					cmp.mapping.complete()
				end
			end,
		}),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-g>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	}),
	completion = {
		autocomplete = false,
	},
})
