SCREEN_W = nil       -- Holds the width of the game window. This variable must not be changed outside this code file, but may be used.
SCREEN_H = nil       -- Holds the height of the game window. This variable must not be changed outside this code file, but may be used.


function loadScreen()   -- Gets width and height of the game window
   SCREEN_W = love.window:getWidth()
   SCREEN_H = love.window:getHeight()
end