function love.load() 
	x = 400
	y = 400
	dG = 200
	dP = 50
	t = 1
	delante = true
end 

function love.update(dt)
	t = t + 1
	x = (dG*math.cos(t/800))
	y = (dP*math.sin(t/800))
	
	if (y < 1) then
		delante = false
	elseif (y > 1) then
		delante = true
	end

end

function love.draw()

	if delante then
		love.graphics.setColor( 250, 189, 005, 255 )
		love.graphics.circle( "fill" , 400 , 400 , 50 , 30)
		love.graphics.setColor( 255, 255, 255, 255 )
		love.graphics.circle("fill", 400+x, 400+y, 30, 30)	
	elseif not delante then
		love.graphics.setColor( 255, 255, 255, 255 )
		love.graphics.circle("fill", 400+x, 400+y, 30, 30)	
		love.graphics.setColor( 250, 189, 005, 255 )
		love.graphics.circle( "fill" , 400 , 400 , 50 , 30)	
	end

	
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