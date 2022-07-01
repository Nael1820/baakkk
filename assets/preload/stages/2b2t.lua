function onCreate()

makeLuaSprite('sky','2b2tsky',0,0)
addLuaSprite('sky')
makeLuaSprite('moon','2b2tmoon',0,0)
addLuaSprite('moon')

makeLuaSprite('back','2b2tbg',0,0)
addLuaSprite('back')

makeLuaSprite('mid','2b2tfg',0,0)
addLuaSprite('mid')

makeLuaSprite('extra','2b2textra',-100,0)
addLuaSprite('extra')
scaleObject('sky', 1.4,1.4)
scaleObject('mid', 1.4,1.4)
scaleObject('moon', 1.4,1.4)
scaleObject('back', 1.4,1.4)
scaleObject('extra', 1.5,1.5)

makeLuaSprite('skypixel','2b2tsky-pixel',0,0)
makeLuaSprite('moonpixel','2b2tmoon-pixel',0,0)
makeAnimatedLuaSprite('bgpixel','2b2tbg-pixel', 0, 0)
addAnimationByPrefix('bgpixel', 'bganim', 'idle', 24, true)
makeAnimatedLuaSprite('fgpixel','2b2tfg-pixel', 0, 0)
addAnimationByPrefix('fgpixel', 'fganim', 'idle', 24, true)
end
function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]()
    end
end

stepHitFuncs = {
    [640] = function()
        setProperty('defaultCamZoom', 1.2);
        setProperty('sky.visible', false)
        setProperty('moon.visible', false)
        setProperty('back.visible', false)
        setProperty('mid.visible', false)
        setProperty('extra.visible', false)

        addLuaSprite('skypixel')
        addLuaSprite('moonpixel')
        addLuaSprite('bgpixel')
        addLuaSprite('fgpixel')
        scaleObject('skypixel', 10,10)
        scaleObject('moonpixel', 10,10)
        scaleObject('bgpixel', 10,10)
        scaleObject('fgpixel', 10,10)
        setProperty('gf.visible', false)
        setProperty('skypixel.antialiasing', false)
        setProperty('moonpixel.antialiasing', false)
        setProperty('bgpixel.antialiasing', false)
        setProperty('fgpixel.antialiasing', false)


    end,
    [896] = function()
        setProperty('defaultCamZoom', 0.9);
        setProperty('sky.visible', true)
        setProperty('moon.visible', true)
        setProperty('back.visible', true)
        setProperty('mid.visible', true)
        setProperty('extra.visible', true)

        removeLuaSprite('skypixel')
        removeLuaSprite('moonpixel')
        removeLuaSprite('bgpixel')
        removeLuaSprite('fgpixel')
        setProperty('gf.visible', true)
    end

}