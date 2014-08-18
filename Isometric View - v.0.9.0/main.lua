function love.load()

         require("screen")
         require("sprites")
         require("isometric")
         require("player")

         -- Asset loading
         loadScreen()   -- No real use. It loads two global variables with the game's window width and height. // screen.lua
         loadSprites()  -- Loads Sprites for the game.                                                         // sprites.lua
         loadGrid()     -- Loads the grid for the game. This is a base grid, any grid can be loaded.           // isometric.lua
         loadPlayer()   -- Loads the player. It is a black dot, currently. Can be controlled with WASD         // player.lua

         -- Console prints for debugging purposes
         print(SCREEN_W)
         print(SCREEN_H)
         printGrid()
end

function love.update(dt) 
end

function love.draw()

   drawGrid('img')       -- Draws the grid on screen. Two options:  - 'img':  draws the sprites selected for each grid's cell
                         --                                         - 'line': draws the grid in lines
                         --                       // isometric.lua

   drawPlayer()          -- Draws the player      // player.lua
   
   -- NOTE: Player must be executed after drawing the grid, or else it will be hidden by the sprites.
   -- NOTE2: If 'line' mode is selected, player's colour should be changed to white (255, 255, 255, 255) since the background is black.
end

function love.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
end

function love.keypressed(key, unicode)

         -- Controlling the character with WASD.   // player.lua
         if key == 'w' then      movePlayer('up')
         elseif key == 's' then  movePlayer('down')
         elseif key == 'a' then  movePlayer('left')
         elseif key == 'd' then  movePlayer('right')
         end
end

function love.keyreleased(key, unicode)
end

function love.focus(f)
end

function love.quit()
end