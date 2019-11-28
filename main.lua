---------------------
--  DexieTheSheep  --
----   AA Ninja  ----
---------------------

local board = {}
local money = 50
local winner

print("------------------------------")

function clearBoard()
	for i=1,9 do
		board[i] = nil
	end
end

clearBoard()

function checkWin()
	for i=1,3 do
		local boardi = board[i]
		local ixn = (i*3)-2 -- 1, 4, 7
		local boardix = board[ixn]
		if boardix == board[ixn+1] and boardix == board[ixn+2] and boardix ~= nil then
			return boardix
		elseif boardi == board[i+3] and boardi == board[i+6] and boardi ~= nil then
			return board[i]
		elseif ((board[1] == board[5] and board[5] == board[9])
			or (board[3] == board[5] and board[5] == board[7]))
			and (board[5] ~= nil) then
			return board[5]
		end
	end
end

function printBoard()
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
		else
			val = tostring(i)
		end
		strtable = string.gsub(strtable, tostring(i), val)
	end
	print(strtable)
end

function ifWinner()
	winner = checkWin()
	if winner ~= nil then
		if winner == true then winner = "Player"
		elseif winner == false then winner = "Robot" end
		printBoard()
		print(winner .. " wins!\n\n------------------------------\n")
		break
	end
end

while money > 0 do -- until bankrupt

while true do -- for each move
	-- tell values
	printBoard()
	
	-- prompt
	while true do
		local box = tonumber(io.read("*n"));
		if (box ~= nil and string.len(box) == 1) and board[box] == nil then
			board[box] = true
			break
		end
		print("Please enter a valid box\n")
	end

	-- check for win
	ifWinner()
	
	-- robot move
	--

	-- check for win
	ifWinner()
end

clearBoard()

end