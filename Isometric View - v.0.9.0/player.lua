PLAYER = { x = 50, y = 50, -- Holds the player needed data. This variable must not be accessed nor changed outside this code file
           i = 1, j = 1 }

function loadPlayer() -- Loads player position to the initial i, j position x, y coordinates in the screen.
   setPlayerCoord()
end

function uploadPlayer()

end

function drawPlayer() -- Draws the players on screen.
   love.graphics.setColor(0, 0, 0, 255)                   -- Sets colour to Black
   love.graphics.circle('fill', PLAYER.x, PLAYER.y, 5, 8) -- The player is a dot
   love.graphics.setColor(255, 255, 255, 255)             -- Sets colour to White
end

function movePlayer( dir )  -- Moves the player in the given direction

   if dir == 'up' then
      PLAYER.j = PLAYER.j - 1
   elseif dir == 'down' then
      PLAYER.j = PLAYER.j + 1
   elseif dir == 'left' then
      PLAYER.i = PLAYER.i - 1
   elseif dir == 'right' then
      PLAYER.i = PLAYER.i + 1
   end

   PLAYER.i, PLAYER.j = checkOutOfBoundaries( PLAYER.i, PLAYER.j )
   setPlayerCoord()

end


--// GET - SET // --

function getPlayerCoord()

end

function setPlayerCoord()  -- Sets the player x, y coordinates to its position in the grid
    PLAYER.x, PLAYER.y = getCoordPos_FromTile( PLAYER.i, PLAYER.j )
end

function getPlayerTile()

end

function setPlayerTile()

end

