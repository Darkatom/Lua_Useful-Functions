
-- File Path format: ../../../
-- File Name format: name.extension (txt, sav, etc.)

-- // LUA // --

function loadFile( filePath, fileName )
   
     local s = {}
     local file = io.open(filePath..fileName, "r")
     local line = file:read("*l")

     while line ~= nil do
        s[#s + 1] = line
        line = file:read("*l")
     end
     file.close(file)

     return s
end

function writeFile( filePath, fileName, text )

   local file = io.open(filePath..fileName, 'w')
   file:write(text)
   file:close()
end


-- // LÖVE2D //--

function saveTable( filePath, fileName, theTable, tableName )
         return = love.filesystem.write( filePath..fileName, table.show(theTable, tableName)
end

function getTable( filePath, fileName )
        theTable = love.filesystem.load(  filePath..fileName )
        return theTable
end