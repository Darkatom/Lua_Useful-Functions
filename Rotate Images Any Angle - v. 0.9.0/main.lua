function love.load()
         require("image")
         loadImage()
end

function love.update(dt)
         if love.keyboard.isDown('d') then
            add2Rot( dt*0.8 )
            add2Angle( dt*0.8 )
            updateRotation()
         elseif love.keyboard.isDown('a') then
            add2Rot( dt*(-0.8) )
            add2Angle( dt*(-0.8) )
            updateRotation()
         end
end

function love.draw()
         love.graphics.print("Usa A y D para rotar las imagenes.", 10, 10)
         love.graphics.print("Use A and D to rotate the images.", 10, 30)
         love.graphics.circle('fill', love.window.getWidth()/2, love.window.getHeight()/2, 10, 8)
         drawImage()
end

function love.mousepressed(x, y, button)
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