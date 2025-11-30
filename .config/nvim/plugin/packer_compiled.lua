-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/carlossluzala/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?.lua;/Users/carlossluzala/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?/init.lua;/Users/carlossluzala/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?.lua;/Users/carlossluzala/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/carlossluzala/.cache/nvim/packer_hererocks/2.1.1748459687/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["blink.cmp"] = {
    config = { "\27LJ\2\n«\2\0\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\a\0025\3\n\0005\4\t\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\15completion\18documentation\1\0\1\18documentation\0\1\0\1\14auto_show\2\1\0\2\28use_nvim_cmp_as_default\1\22nerd_font_variant\tmono\15appearance\1\0\2\28use_nvim_cmp_as_default\1\22nerd_font_variant\tmono\vkeymap\1\0\3\vkeymap\0\15completion\0\15appearance\0\1\0\1\vpreset\nenter\nsetup\14blink.cmp\frequire\0" },
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/blink.cmp",
    url = "https://github.com/saghen/blink.cmp"
  },
  ["blink.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/blink.nvim",
    url = "https://github.com/saghen/blink.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["guess-indent.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17guess-indent\frequire\0" },
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/guess-indent.nvim",
    url = "https://github.com/nmac427/guess-indent.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["inc-rename.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/inc-rename.nvim",
    url = "https://github.com/smjonas/inc-rename.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sqlite.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/sqlite.nvim",
    url = "https://github.com/3rd/sqlite.nvim"
  },
  ["supermaven-nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20supermaven-nvim\frequire\0" },
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/supermaven-nvim",
    url = "https://github.com/supermaven-inc/supermaven-nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["time-tracker.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/time-tracker.nvim",
    url = "https://github.com/3rd/time-tracker.nvim"
  },
  ["tiny-inline-diagnostic.nvim"] = {
    config = { "\27LJ\2\n\127\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0B\0\2\1K\0\1\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\27tiny-inline-diagnostic\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/opt/tiny-inline-diagnostic.nvim",
    url = "https://github.com/rachartier/tiny-inline-diagnostic.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vague.nvim"] = {
    loaded = true,
    path = "/Users/carlossluzala/.local/share/nvim/site/pack/packer/start/vague.nvim",
    url = "https://github.com/vague-theme/vague.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: guess-indent.nvim
time([[Config for guess-indent.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17guess-indent\frequire\0", "config", "guess-indent.nvim")
time([[Config for guess-indent.nvim]], false)
-- Config for: blink.cmp
time([[Config for blink.cmp]], true)
try_loadstring("\27LJ\2\n«\2\0\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\a\0025\3\n\0005\4\t\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\15completion\18documentation\1\0\1\18documentation\0\1\0\1\14auto_show\2\1\0\2\28use_nvim_cmp_as_default\1\22nerd_font_variant\tmono\15appearance\1\0\2\28use_nvim_cmp_as_default\1\22nerd_font_variant\tmono\vkeymap\1\0\3\vkeymap\0\15completion\0\15appearance\0\1\0\1\vpreset\nenter\nsetup\14blink.cmp\frequire\0", "config", "blink.cmp")
time([[Config for blink.cmp]], false)
-- Config for: supermaven-nvim
time([[Config for supermaven-nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20supermaven-nvim\frequire\0", "config", "supermaven-nvim")
time([[Config for supermaven-nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'tiny-inline-diagnostic.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
