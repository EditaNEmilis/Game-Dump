function love.load()
    -- Width and Height
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    -- Background
    background = love.graphics.setBackgroundColor(0, 55, 0)

    -- Values
    size = 100
    froggyvalue = 5
    froggyswitch = false

    -- GFX
    froggy = love.graphics.newImage("gfx/Froggy/".. froggyvalue ..".png", nil)
end

function love.update(dt)
    function Froggy()
        love.timer.sleep(1 / 10 - dt)

        froggy = love.graphics.newImage("gfx/Froggy/".. froggyvalue ..".png", nil)
        froggyvalue = math.random(1, 5)

        love.graphics.draw(froggy, width - 960, height / 8)
    end
end


function love.draw()
    Froggy()
end