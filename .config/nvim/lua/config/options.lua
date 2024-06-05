-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = {
    autoindent = true,
    clipboard = "unnamedplus",
    cmdheight = 0,
    colorcolumn = "80,120",
    expandtab = true,
    fillchars = {
        foldopen = "",
        foldclose = "",
        fold = " ",
        foldsep = " ",
        diff = "/",
        eob = " ",
    },
    foldcolumn = "1",
    foldenable = true,
    foldexpr = "nvim_treesitter#foldexpr()",
    foldlevel = 99,
    foldmethod = "expr",
    ignorecase = true,
    jumpoptions = "view",
    list = true,
    mousemoveevent = true,
    number = true,
    pumheight = 10,
    sessionoptions = "buffers,curdir,folds,help,tabpages,terminal,globals",
    shiftwidth = 4,
    showmode = false,
    sidescrolloff = 5,
    signcolumn = "yes",
    smartcase = true,
    smartindent = true,
    spelloptions = "camel,noplainbuffer",
    splitkeep = "screen",
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    undodir = os.getenv("HOME") .. "/.nvim/undodir",
    undofile = true,
    updatetime = 100,
    wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*DS_STORE,*.db",
    wildmode = "longest:full:full",
    wrap = false,
    writebackup = false,
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
    vim.opt[k] = v
end
