function love.load() 
	x = 400
	y = 400
	dG = 400
	dP = 200
	t = 1
end 

function love.update(dt)
	t = t + 1
	x = (dG*math.cos(t/800))
	y = (dP*math.sin(t/800))
end

function love.draw()
	love.graphics.circle("fill", 400+x, 400+y, 30, 30)
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
