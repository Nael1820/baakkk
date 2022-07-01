local angleshit = 1;
local anglevar = 2;
function onBeatHit()
    if(curBeat < 32) then
        doTweenZoom('zoomer', 'camHUD', 1, 13, 'linear')
        doTweenZoom('goomer', 'camGame', 1, 13, 'linear')
    
    end

    if(curBeat > 32) then
        if curBeat % 2 == 0 then
            angleshit = anglevar;      
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')

    
    end
end