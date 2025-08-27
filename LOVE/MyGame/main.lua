function love.load()
    player = {}
    player.x = 0
    player.y = 0
end

function love.update(dt)
    --Movement
    if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        player.y = player.y - 3
    end
    
    if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        player.y = player.y + 3
    end

    if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        player.x = player.x - 3
    end
    
    if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        player.x = player.x + 3
    end

    --- Collide
    -- Left or Right
    if player.x < 0 then
        player.x = 0
    end

    if player.x > 800 then
        player.x = 800
    end

    -- Up or Down
    if player.y < 0 then
        player.y = 0
    end

    if player.y > 600 then
        player.y = 600
    end
end

function love.draw()
    local player = love.graphics.circle("fill", player.x, player.y, 50)
    local ball = love.graphics.circle("fill", 400, 300, 100)
end