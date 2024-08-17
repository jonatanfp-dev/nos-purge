-----------------------------------
-- script created by @jonatanfp_ --
-----------------------------------

local properties = {
    color = rgbm(255, 255, 255, 0.1),
    colorConsistency = 0.5,
    thickness = 1,
    life = 1,
    size = 0.001,
    spreadK = 1,
    growK = 2,
    targetYVelocity = 15
}

local smoke = ac.Particles.Smoke(properties)

function script.update(dt)
    if car.extraE == true then
        smoke:emit(vec3(-0.68, 0.95, 0.7), vec3(-6, 6, 3), 2)
        smoke:emit(vec3(0.68, 0.95, 0.7), vec3(6, 6, -3), 2)
    end
end
