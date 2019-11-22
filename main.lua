--io.read("*n")
--------------------
--    DexieT
--------------------

local gameplay = true
local board = {
	a, b, c,
	d, e, f,
	g, h, i
}

while gameplay do
	print([[Choose a box!
	a|b|c
	-----
	d|e|f
	-----
	g|h|i]])
	local box = io.read("*n");
	for x in board do
		--
	end
end