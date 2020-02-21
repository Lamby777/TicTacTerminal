---------------------
--  DexieTheSheep  --
----   AA Ninja  ----
---------------------

local money = 50
local prize = 20
local winner
local ways = {
	{1,2,3},
	{4,5,6},
	{7,8,9},
	{1,4,7},
	{2,5,8},
	{3,6,9},
	{1,5,9},
	{7,5,3},
}
math.randomseed(os.time())
for x=1,math.random(3,6) do
	math.random()
end

print("----------New Game------------\n")
--print([[
print([[
		Type a box number
]])
--			1|2|3
--			-----
--			4|5|6
--			-----
--			7|8|9
--]])

function table.newCleared(default, min, max)
	if max == nil then
		max = min
		min = 1
	end
	local table = {}
	for i=min,max do table[i] = default end
	return table
end


local board = table.newCleared(nil, 9)

function getAvailables()
	local available = {}
	for i=1,9 do
		if board[i] == nil then table.insert(available, i) end
	end
end

function checkWin()
	for _,v in pairs(ways) do
		local b1 = board[v[1]]
		if b1 == board[v[2]] and
		b1 == board[v[3]] and
		board[v[1]] ~= nil then
			return board[v[1]]
		end
	end
	if #getAvailables() == 0 then return "Tie" end
end

function printBoard()
	local strtable = [[
			7|8|9
			-----
			4|5|6
			-----
			1|2|3
	]]
	for i=1,9 do
		local val
		-- Oh come on, you know I had to do it
		if board[i] == true then
			val = "O"
		elseif board[i] == false then
			val = "X"
		else
			val = tostring(i)
			--val = " "
		end
		strtable = string.gsub(strtable, tostring(i), val)
	end
	print(strtable)
end

function AI() -- chooses where robot moves
	local available = getAvailables()
	local move
	if #available == 0 then return end
	-- Availables listed, now do super smort big brain stuff
	for i,v in pairs(ways) do
		local b1 = board[v[1]]
		local b2 = board[v[2]]
		local b3 = board[v[3]]
		if (b1 == b2 and b1 ~= nil) then
			move = b3
			break
		elseif (b1 == b3 and b1 ~= nil) then
			move = b2
			break
		elseif (b2 == b3 and b2 ~= nil) then
			move = b1
			break
		end
	end
	if not move then
		return available[math.random(1,#available)]
	else return move end
end

while money > 0 do -- until bankrupt

while true do -- for each move
	-- tell values
	printBoard()

	-- prompt
	while true do
		local box = tonumber(io.read("*l"));
		if (box ~= nil and string.len(box) == 1) and board[box] == nil then
			board[box] = true
			break
		end
		print("Please enter a valid box number\n")
	end

	-- robot move
	local robomove = AI()
	if robomove then
		board[robomove] = false
	end

	-- check for win
	winner = checkWin()
	if winner ~= nil then
		if winner == "Tie" then
			print("No winner...")
		elseif winner == false then
			print("ur mom gay")
		elseif winner == true then
			print("gg n00b")
			money = money + prize
		end
		print("\n")
		printBoard()
		break
	end
end

board = table.newCleared(nil, 9)

end