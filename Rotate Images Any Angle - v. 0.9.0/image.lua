image1 = { x = 0,
          y = 0,
          i = nil,
          r = 0,
          d = 0,
          a = 0
        }
image2 = { x = 0,
          y = 0,
          i = nil,
          r = 0,
          d = 0,
          a = math.pi/2
        }
        
        
function loadImage()
         image1.x = love.window.getWidth()/2
         image1.y = love.window.getHeight()/2
         image1.i = love.graphics.newImage("i.png")
         image2.x = image1.x
         image2.y = image1.y + image1.i:getHeight()
         image2.i = love.graphics.newImage("i2.png")
         image2.d = image2.i:getHeight()
end

function drawImage()
         love.graphics.draw(image1.i, image1.x, image1.y, image1.r)
         love.graphics.draw(image2.i, image2.x, image2.y, image2.r)
end

function updateRotation()
         image2.x = love.window.getWidth()/2 + image2.d * math.cos( image2.a )
         image2.y = love.window.getHeight()/2 + image2.d * math.sin( image2.a  )
end

function add2Rot( n )
         image1.r = image1.r + n
         image2.r = image2.r + n
end

function add2Angle( n )
         image2.a = image2.a + n
end

function getDistance( x , y )
   xDiff = x - love.window.getWidth()/2
   yDiff = y - love.window.getHeight()/2
   return math.sqrt( (xDiff*xDiff) + (yDiff*yDiff) )
end

function getAngle( x , y )
   xDiff = x - love.window.getWidth()/2
   yDiff = y - love.window.getHeight()/2
   return math.atan2(yDiff, xDiff)
end