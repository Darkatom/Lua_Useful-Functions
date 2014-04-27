Teclado = {}
TecladoNumerico = {}

function CrearTecla(xTecla, yTecla, ancho, alto, Tecla)
	local tecla = {}
	tecla.x = xTecla
	tecla.y = yTecla
	tecla.ancho = ancho
	tecla.alto = alto
	tecla.tecla = Tecla
	
	return tecla
end

function CargarTeclas()
	local ancho = 25
	local alto = 25
	
	table.insert(Teclado, CrearTecla(0, 0, ancho, alto, "1")) table.insert(Teclado, CrearTecla(1, 0, ancho, alto, "2"))
	table.insert(Teclado, CrearTecla(2, 0, ancho, alto, "3")) table.insert(Teclado, CrearTecla(3, 0, ancho, alto, "4"))
	table.insert(Teclado, CrearTecla(4, 0, ancho, alto, "5")) table.insert(Teclado, CrearTecla(5, 0, ancho, alto, "6"))
	table.insert(Teclado, CrearTecla(6, 0, ancho, alto, "7")) table.insert(Teclado, CrearTecla(7, 0, ancho, alto, "8"))
	table.insert(Teclado, CrearTecla(8, 0, ancho, alto, "9")) table.insert(Teclado, CrearTecla(9, 0, ancho, alto, "0"))
	
	table.insert(Teclado, CrearTecla(0, 1, ancho, alto, "q")) table.insert(Teclado, CrearTecla(1, 1, ancho, alto, "w"))
	table.insert(Teclado, CrearTecla(2, 1, ancho, alto, "e")) table.insert(Teclado, CrearTecla(3, 1, ancho, alto, "r"))
	table.insert(Teclado, CrearTecla(4, 1, ancho, alto, "t")) table.insert(Teclado, CrearTecla(5, 1, ancho, alto, "y"))
	table.insert(Teclado, CrearTecla(6, 1, ancho, alto, "u")) table.insert(Teclado, CrearTecla(7, 1, ancho, alto, "i"))
	table.insert(Teclado, CrearTecla(8, 1, ancho, alto, "o")) table.insert(Teclado, CrearTecla(9, 1, ancho, alto, "p"))
	
	table.insert(Teclado, CrearTecla(0.4, 2, ancho, alto, "a")) table.insert(Teclado, CrearTecla(1.4, 2, ancho, alto, "s"))
	table.insert(Teclado, CrearTecla(2.4, 2, ancho, alto, "d")) table.insert(Teclado, CrearTecla(3.4, 2, ancho, alto, "f"))
	table.insert(Teclado, CrearTecla(4.4, 2, ancho, alto, "g")) table.insert(Teclado, CrearTecla(5.4, 2, ancho, alto, "h"))
	table.insert(Teclado, CrearTecla(6.4, 2, ancho, alto, "j")) table.insert(Teclado, CrearTecla(7.4, 2, ancho, alto, "k"))
	table.insert(Teclado, CrearTecla(8.4, 2, ancho, alto, "l"))

	table.insert(Teclado, CrearTecla(0.2 + 1, 3, ancho, alto, "z")) table.insert(Teclado, CrearTecla(1.2 + 1, 3, ancho, alto, "x"))
	table.insert(Teclado, CrearTecla(2.2 + 1, 3, ancho, alto, "c")) table.insert(Teclado, CrearTecla(3.2 + 1, 3, ancho, alto, "v"))
	table.insert(Teclado, CrearTecla(4.2 + 1, 3, ancho, alto, "b")) table.insert(Teclado, CrearTecla(5.2 + 1, 3, ancho, alto, "n"))
	table.insert(Teclado, CrearTecla(6.2 + 1, 3, ancho, alto, "m")) 
	
	table.insert(Teclado, CrearTecla(0.8, 4, ancho, alto, ".")) table.insert(Teclado, CrearTecla(1.8, 4, ancho, alto, ",")) 
	table.insert(Teclado, CrearTecla(2.8, 4, ancho, alto, ":")) table.insert(Teclado, CrearTecla(3.8, 4, ancho, alto, "-")) 
	table.insert(Teclado, CrearTecla(4.8, 4, ancho, alto, "_")) table.insert(Teclado, CrearTecla(5.8, 4, ancho, alto, "+")) 
	table.insert(Teclado, CrearTecla(6.8, 4, ancho, alto, "/")) table.insert(Teclado, CrearTecla(7.8, 4, ancho, alto, "*"))
	
	table.insert(Teclado, CrearTecla(0.75, 5, ancho*4, alto, " "))
	
	table.insert(TecladoNumerico, CrearTecla(0, 0, ancho, alto, "7")) table.insert(TecladoNumerico, CrearTecla(1, 0, ancho, alto, "8"))
	table.insert(TecladoNumerico, CrearTecla(2, 0, ancho, alto, "9")) 
	table.insert(TecladoNumerico, CrearTecla(0, 1, ancho, alto, "4")) table.insert(TecladoNumerico, CrearTecla(1, 1, ancho, alto, "5")) 
	table.insert(TecladoNumerico, CrearTecla(2, 1, ancho, alto, "3"))
	table.insert(TecladoNumerico, CrearTecla(0, 2, ancho, alto, "1")) table.insert(TecladoNumerico, CrearTecla(1, 2, ancho, alto, "2"))
	table.insert(TecladoNumerico, CrearTecla(2, 2, ancho, alto, "3")) 
	table.insert(TecladoNumerico, CrearTecla(0, 3, ancho*3, alto, "0"))
end

function EscribirTeclado(xCursor, yCursor, x, y)
	local letterSize = 1
	local Desfase = 5
	
	for i = 1, #Teclado do
		love.graphics.setColor(255, 255, 255, 255)
		if insideBox(xCursor, yCursor, x + Teclado[i].x*Teclado[i].ancho, y + Teclado[i].y*Teclado[i].alto, Teclado[i].ancho, Teclado[i].alto) then
			love.graphics.rectangle("fill", x + Teclado[i].x*Teclado[i].ancho, y + Teclado[i].y*Teclado[i].alto, Teclado[i].ancho, Teclado[i].alto)
			love.graphics.setColor(0, 0, 0, 255)
			love.graphics.print(Teclado[i].tecla, x + Teclado[i].x*Teclado[i].ancho + Desfase, y + Teclado[i].y*Teclado[i].alto + Desfase, 0, letterSize, letterSize, 0, 0)
		else
			love.graphics.rectangle("line", x + Teclado[i].x*Teclado[i].ancho, y + Teclado[i].y*Teclado[i].alto, Teclado[i].ancho, Teclado[i].alto)
			love.graphics.print(Teclado[i].tecla, x + Teclado[i].x*Teclado[i].ancho + Desfase, y + Teclado[i].y*Teclado[i].alto + Desfase, 0, letterSize, letterSize, 0, 0)
		end
	end	
end

function EscribirTecladoNumerico(xCursor, yCursor, x, y)
	local letterSize = 1
	local Desfase = 5
	for i = 1, #TecladoNumerico do
		love.graphics.setColor(255, 255, 255, 255)
		if insideBox(xCursor, yCursor, x + TecladoNumerico[i].x*TecladoNumerico[i].ancho, y + TecladoNumerico[i].y*TecladoNumerico[i].alto, TecladoNumerico[i].ancho, TecladoNumerico[i].alto) then
			love.graphics.rectangle("fill", x + TecladoNumerico[i].x*TecladoNumerico[i].ancho, y + TecladoNumerico[i].y*TecladoNumerico[i].alto, TecladoNumerico[i].ancho, TecladoNumerico[i].alto)
			love.graphics.setColor(0, 0, 0, 255)
			love.graphics.print(TecladoNumerico[i].tecla, x + TecladoNumerico[i].x*TecladoNumerico[i].ancho + Desfase, y + TecladoNumerico[i].y*TecladoNumerico[i].alto + Desfase, 0, letterSize, letterSize, 0, 0)
		else
			love.graphics.rectangle("line", x + TecladoNumerico[i].x*TecladoNumerico[i].ancho, y + TecladoNumerico[i].y*TecladoNumerico[i].alto, TecladoNumerico[i].ancho, TecladoNumerico[i].alto)
			love.graphics.print(TecladoNumerico[i].tecla, x + TecladoNumerico[i].x*TecladoNumerico[i].ancho + Desfase, y + TecladoNumerico[i].y*TecladoNumerico[i].alto + Desfase, 0, letterSize, letterSize, 0, 0)
		end
	end	
end

function ProcesarTeclado(xCursor, yCursor, xTeclado, yTeclado, variable)
	local i = 1
	
	while Teclado[i] and not insideBox(xCursor, yCursor, xTeclado + Teclado[i].x*Teclado[i].ancho, yTeclado + Teclado[i].y*Teclado[i].alto, Teclado[i].ancho, Teclado[i].alto) do
		i = i + 1
	end
	
	if i <= #Teclado then
		return variable..Teclado[i].tecla
	else return variable end
	
end

function ProcesarTecladoNumerico(xCursor, yCursor, xTecladoNumerico, yTecladoNumerico, cifra)
	local i = 1

	while TecladoNumerico[i] and not insideBox(xCursor, yCursor, xTecladoNumerico + TecladoNumerico[i].x*TecladoNumerico[i].ancho, yTecladoNumerico + TecladoNumerico[i].y*TecladoNumerico[i].alto, TecladoNumerico[i].ancho, TecladoNumerico[i].alto) do
		i = i + 1
	end
	
		if i <= #TecladoNumerico then
		return cifra*10 + tonumber(TecladoNumerico[i].tecla)
	else return cifra end
end