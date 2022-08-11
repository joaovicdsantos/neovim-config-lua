
-- nvim-web-devicons

local function configureNvimWebDevIcons() 
  require('nvim-web-devicons').get_icons()
end


-- staline

local function configureStalineAndStabline()
  -- gambiarra mode on
  local function dot_git_exists()
    local file = './.git/'
    local ok, err, code = os.rename(file, file)
    if not ok then
      if code == 13 then
        return true
      end
    end
    return ok
  end

  if dot_git_exists() then
    branch = '-branch'
  else
    branch = '-📁'
  end

  require "staline".setup {
	  sections = {
		  left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
		  mid = {},
		  right = {'file_name', 'line_column' }
	  },
	  mode_colors = {
		  i = "#d4be98",
		  n = "#84a598",
		  c = "#8fbf7f",
		  v = "#fc802d",
	  },
	  defaults = {
		  true_colors = true,
		  line_column = " [%l/%L] :%c  ",
		  branch_symbol = " "
    }
  }

  require('stabline').setup {
    style = "bar",
    fg = "white",
    inactive_bg = "#1e2127",
	inactive_fg = "#aaaaaa",
    stab_bg = "black",
  }

end

-- blankline
local function configureBlankline()

  vim.opt.list = true
  vim.opt.listchars:append('eol:↴')
  vim.opt.listchars:append('space:⋅')

  require('indent_blankline').setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_content = true,
    show_current_context_start = true,
  }

end

-- Nvim-Colorizer
local function configureNvimColorizer()
  require('colorizer').setup()
end


-- Nvim-Autopairs
local function configureNvimAutopairs()
  require('nvim-autopairs').setup()
end

-- Discord Presence
local function configureDiscordPresence()
  require('presence'):setup({
    auto_update         = true,
    neovim_image_text   = "Editor de homem de verdade",
    main_image          = "/home/budinha/Imagens/nvim/gatinho-codando.jpg",
    enable_line_number  = true,
    buttons             = true,
    editing_text        = "Editando %s",
    file_explorer_text  = "Explorando %s",
    git_commit_text     = "Commitando alterações",
    plugin_manager_text = "Deixando o edito ainda mais daora",
    reading_text        = "%s... Esse só dá pra ler",
    workspace_text      = "Codando em %s",
    line_number_text    = "Linha %s de %s",
})
end

-- Chamando as configs
configureNvimWebDevIcons()
configureStalineAndStabline()
configureBlankline()
configureNvimColorizer()
configureNvimAutopairs()
configureDiscordPresence()
