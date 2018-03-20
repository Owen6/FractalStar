theta = 0
mew = 0

function love.update(dt)
	theta = theta + math.pi * dt
	mew = mew + 4
end

function love.draw()
	love.graphics.setBackgroundColor(166,72,72)
	love.graphics.translate(love.graphics.getWidth()/2, love.graphics.getHeight()/2)
	
	-- theta = 0
	-- for i=0,math.pi*2,(math.pi/4) do 
	circles(0,0,150,theta,mew)
		-- theta = theta+i
end

function circles(x,y,r,t,m)
	love.graphics.rotate(t)
	love.graphics.push()	
	local n = r
	if n > 255 then
		n = 255
	end
	love.graphics.setColor(0,0 - n,0, 255)
	love.graphics.line(-r,y,r,0)
	love.graphics.circle('line',x,y,r)
	love.graphics.pop()
	if r > 10 then
--		love.graphics.rotate(t)
		love.graphics.translate(r*math.cos(t),r*math.sin(t))
		circles(0,0,r/2,t)
	end
	-- while r == 9.375 do 
	-- 	love.graphics.push()
	-- 	love.graphics.points(r,0)
	-- 	love.graphics.pop()
	-- end
end