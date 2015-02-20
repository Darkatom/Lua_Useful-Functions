_ISO_F = { x = 48, y = 24, extra_height = 50 }  -- Isometric measures. This table must not be accessed nor changed from outside this code file.

_GRID = {}

function loadGrid()    -- Loads a 10x10 matrix in _GRID, which will be the isometric map represented on screen.
                       -- NOTE: Any matrix may be loaded.
         local t = {}
         local s
         local b = false

         for i = 1, 10 do
              for j = 1, 10 do
                 if b then
                    s = 'tile'      -- Key name of the sprite that will be drawn in this tile's position.
                 else               --         NOTE: Any key name may be used as long as it is loaded in the game.
                    s = 'cube'
                 end
                 table.insert(t, s)
                 b = not b
              end
              table.insert(_GRID, t)
              t = { }
         end
end

function drawGrid( mode ) -- Draws the Grid in screen.
   for i = 1, #_GRID do
       for j = 1, #_GRID[i] do
          drawTile( mode, SCREEN_W/2 + _ISO_F.x*(i-1) - _ISO_F.x*j, _ISO_F.extra_height + _ISO_F.y*(i-1) + _ISO_F.y*j, getSprite(_GRID[i][j]) )
       end
   end
end

function drawTile( mode, x, y, sprite ) -- Draws a tile in screen at the given position.
                                        -- mode may be 'line', for line drawing, or the given sprite.

   if mode == 'img' then
     love.graphics.draw(sprite, x, y - sprite:getHeight() + 2*_ISO_F.y)
   elseif mode == 'line' then
     local screen_x = x + _ISO_F.x
     love.graphics.line( screen_x, y,
                         screen_x + _ISO_F.x  , y + _ISO_F.y,
                         screen_x             , y + 2*_ISO_F.y,
                         screen_x - _ISO_F.x  , y + _ISO_F.y,
                         screen_x, y )
   end

end

function printGrid() -- Prints the grid's values to console.
    local s = ""
    for i = 1, #_GRID do
       for j = 1, #_GRID[i] do
           s = s.." ".._GRID[i][j]
       end
       print(s)
       s = ""
    end

end


-- // MATRIX RELATED // --

function setGridValueTo( i, j, n ) -- Changes the value at given grid's position.
   _GRID[i][j] = n
end


-- // MOVEMENT RELATED // --

function getCoordPos_FromTile( i , j ) -- Returns the middle x, y coordinates of the given grid's position.
    local x = SCREEN_W/2 + _ISO_F.x*(i-1) - _ISO_F.x*j + _ISO_F.x
    local y = _ISO_F.extra_height + _ISO_F.y*(i-1) + _ISO_F.y*j  + _ISO_F.y
    return x, y
end

function getTilePos_FromCoord()

end

function checkOutOfBoundaries( i, j ) -- Returns the given position corrected if the given position is out of the boundaries.
   if i < 1 then i = 1
   elseif i > #_GRID then i = #_GRID
   end
   
   if j < 1 then j = 1
   elseif j > #_GRID[i] then j = #_GRID[i]
   end
   
   return i, j
end