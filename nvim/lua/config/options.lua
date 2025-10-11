local options =  
{
	number = true,
	relativenumber = true, 
	swapfile = false, 
	showmode = false, 
	cursorline = true, -- highlight the cursor line 
	shiftwidth = 4, -- 4 spaces for indent width 
	ignorecase = true, -- ignore case when searching 
	smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitivity 
	wrap = true, -- disable line wrapping 
	tabstop = 4,
	ttyfast = true, 
	title = true,
	smoothscroll = true,
	smarttab = true, 
	numberwidth = 4,
	-- termguicolors = true,
}

for k, v in pairs(options) do 
	vim.opt[k] = v
end 
