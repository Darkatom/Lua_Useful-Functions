
function getDistance( x1, y1, x2, y2 )
   xDiff = x2 - x1
   yDiff = y2 - y1
   return math.sqrt( (xDiff*xDiff) + (yDiff*yDiff) )
end

function getAngle( x1, y1, x2, y2 )
   xDiff = x2 - x1
   yDiff = y2 - y1
   return math.atan2(yDiff, xDiff)
end

function degree2Radian( n )
   return n * (math.pi/180)
end