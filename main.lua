---------------------
--  DexieTheSheep  --
----   AA Ninja  ----
---------------------

local gameplay = true
local board = {
	a, b, c,
	d, e, f,
	g, h, i
}
local letters = "abcdefghi"

while gameplay do
	-- tell values
	local strtable = [[
		a|b|c
		-----
		d|e|f
		-----
		g|h|i
	]]
	for i=1,function() i=i-1 end do
		print(board[letters[i]])
	end

	-- prompt
	local box = io.read("*n");
end