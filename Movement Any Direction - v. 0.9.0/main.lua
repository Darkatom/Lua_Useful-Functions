
bola = { x = 400, y = 300 }
dest = { x = 400, y = 300 }
vec = { x = 0, y = 0 }
r = 20

function calc_dir()
         vec.x = (dest.x - bola.x)
         vec.y = (dest.y - bola.y)
end


function love.load()
end

function love.update(dt)
         if (bola.x <= dest.x - r/10 or bola.x >= dest.x + r/10) then
           bola.x = bola.x + dt*vec.x
         end

         if (bola.y <= dest.y - r/10 or bola.y >= dest.y + r/10) then
            bola.y = bola.y + dt*vec.y
         end
end

function love.draw()
         love.graphics.print("Clicka en cualquier parte", 10, 10)
         love.graphics.print("Click anywhere", 10, 30)
         love.graphics.circle( 'line', bola.x, bola.y, r, 10)
         love.graphics.circle( 'line', dest.x, dest.y, r/2, 10)
end

function love.mousepressed(x, y, button)
         if button == 'l' then
            dest.x = x
            dest.y = y
            calc_dir()
         end
end

function love.mousereleased(x, y, button)
end

function love.keypressed(key, unicode)
end

function love.keyreleased(key, unicode)
end

function love.focus(f)
end

function love.quit()
end

function insideBox (px, py, x, y, wx, wy)
	if px > x and px < x + wx then
		if py > y and py < y + wy then
			return true
		end
	end
	return false
end