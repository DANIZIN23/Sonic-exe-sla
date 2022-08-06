local WindowDance = false
local DanceAmt = 1
local Shake = 'off'


function onCreate()
    makeLuaSprite('black', 'black', -500, 0)
    setTextSize('scoreTxt', 0)
    setTextSize('timeTxt', 0)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setPropertyFromClass('ClientPrefs', 'middleScroll', true);
    setPropertyFromClass('lime.app.Application', 'current.window.title', "Friday Night Funkin': Tarnished")
    setPropertyFromClass('openfl.Lib', 'application.window.resizable', false)
    setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', false)
    setPropertyFromClass('openfl.Lib', 'application.window.width', 1280)
    setPropertyFromClass('openfl.Lib', 'application.window.height', 720)
    setPropertyFromClass('openfl.Lib', 'application.window.y', 180)
    setPropertyFromClass('openfl.Lib', 'application.window.x', 320)
    windowy = getPropertyFromClass("openfl.Lib", "application.window.y")
    windowx = getPropertyFromClass("openfl.Lib", "application.window.x")   
end

function onStepHit()
    if curStep == 384 then        
        addLuaSprite('black', true) 
        setProperty('camHUD.visible', false) 
    end

    if curStep == 416 then
        removeLuaSprite('black', false)
        setProperty('camHUD.visible', true) 
    end

    if curStep == 1471 then
        addLuaSprite('black', true) 
    end

    if curStep == 1504 then
        removeLuaSprite('black', false)
    end

    if curStep == 2336 then
        addLuaSprite('black', true) 
    end

    if curStep == 2352 then
        removeLuaSprite('black', false)
    end

    if curStep == 2175 then
        Shake = 'on'
    end
    
    if curStep == 2208 then
        DanceAmt = 2
    end

    if curStep == 2240 then
        DanceAmt = 3
    end

    if curStep == 2272 then
        DanceAmt = 4
    end

    if curStep == 2304 then
        DanceAmt = 0    
        setPropertyFromClass('openfl.Lib', 'application.window.y', 180)
        setPropertyFromClass('openfl.Lib', 'application.window.x', 320)
    end
end

function onUpdatePost(elapsed)
    if WindowDance == true then
        if getPropertyFromClass("openfl.Lib", "application.window.x") == windowx and getPropertyFromClass("openfl.Lib", "application.window.y") == windowy then
            setPropertyFromClass('openfl.Lib', 'application.window.y', math.random(DanceAmt*-1+windowy, DanceAmt+windowy))
            setPropertyFromClass('openfl.Lib', 'application.window.x', math.random(DanceAmt*-1+windowx, DanceAmt+windowx))
        else
            setPropertyFromClass('openfl.Lib', 'application.window.y', windowy)
            setPropertyFromClass('openfl.Lib', 'application.window.x', windowx)
        end
    end
end   

function onUpdate()
    if Shake == 'on' then
        WindowDance = true
    else
        WindowDance = false    
    end

end