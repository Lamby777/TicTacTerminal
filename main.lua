---------------------
--  DexieTheSheep  --
----   AA Ninja  ----
---------------------

-- hey if u see this u probably came
-- from the kahoot, thanks for visiting

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
		local val
		-- Oh come on, you know I had to do it
		if board[i] == true then
			val = "O"
		elseif board[i] == false then
			val = "X"
		end
		strtable:gsub(strtable, tostring(i), val)
	end
	print(strtable)
	-- prompt
	while true do
		local box = tonumber(io.read("*n"));
		if (box ~= nil and string.len(box) == 1) then
			board[box] = true
			break
		end
	end
	-- robot move
end