_SPRITES = {}          -- Holds every sprite used for the game. This variable must not be accessed nor changed outside this code file.

function loadSprites()     -- Loads the images/sprites located in the folder "imgs".

   _SPRITES["tile"] = love.graphics.newImage( "imgs/tile.png" )
   _SPRITES["cube"] = love.graphics.newImage( "imgs/cube.png" )
   
   -- NOTE: Each sprite gets a key name in SPRITES so it can be accessed by it, thus
   --       avoiding long searches.
end

function getSprite( name )  -- Returns the sprite saved at the given key name.
   return _SPRITES[name]
end