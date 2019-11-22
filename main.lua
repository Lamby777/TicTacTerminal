---------------------
--  DexieTheSheep  --
----   AA Ninja  ----
---------------------

-- I will add you as a contrib,
-- just tell me ur github name

local gameplay = true
local board = {
	a, b, c,
	d, e, f,
	g, h, i
}

while gameplay do
	-- tell values
	local strtable = [[
		1|2|3
		-----
		4|5|6
		-----
		7|8|9
	]]
	for i=1,9 do
		print(board[i])
	end# TicTacToe
Written in Lua

	-- prompt
	while true do
		local box = io.read("*n");
		break
	end
end