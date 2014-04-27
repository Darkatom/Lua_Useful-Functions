PruebaString = ""
PruebaCifra = 0

function love.load() 
	require("teclado")
	CargarTeclas()
end

function love.update(dt)
end

function love.draw()
	local x = love.mouse.getX( )
	local y = love.mouse.getY( )
	
	EscribirTeclado(x, y, 0, 0)
	EscribirTecladoNumerico(x, y, 0, 200)
	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.print(PruebaString, 150, 250, 0, 1, 1, 0, 0)
	love.graphics.print(PruebaCifra, 150, 270, 0, 1, 1, 0, 0)
end

function love.mousepressed(x, y, button)
	PruebaString = ProcesarTeclado(x, y, 0, 0, PruebaString)
	PruebaCifra = ProcesarTecladoNumerico(x, y, 0, 200, PruebaCifra)
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