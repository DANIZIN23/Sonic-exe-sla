local hidestuff = false

function onCreatePost()
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')
	setPropertyFromClass('ClientPrefs', 'songScoreType', 'Score Elapsed') 
    setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')

    makeLuaText('score', 'SCORE', 0, 30, 635)
    setTextColor('score', 'FFFF00')
    addLuaText('score')
    setTextFont('score', 'sonic1hud.ttf')
    
    makeLuaText('scorecount', '', 0, 30, 635)
    addLuaText('scorecount')
    setTextFont('scorecount', 'sonic1hud.ttf')

    makeLuaText('time', 'TIME', 0, 30, 595)
    setTextColor('time', 'FFFF00')
    addLuaText('time') 
    setTextFont('time', 'sonic1hud.ttf')
	
	makeLuaText('timecount', '', 0, 30, 595)
	addLuaText('timecount')
    setTextFont('timecount', 'sonic1hud.ttf')
	
	makeLuaText('misses', 'MISSES', 0, 30, 555)
	setTextColor('misses', 'FFFF00')
	addLuaText('misses')
    setTextFont('misses', 'sonic1hud.ttf')
	
	makeLuaText('missescount', '', 0, 100, 555)
	addLuaText('missescount')
    setTextFont('missescount', 'sonic1hud.ttf')
	
	setTextSize('missescount', 45)
	setTextSize('misses', 45)
	setTextSize('time', 45)
    setTextSize('score', 45)
    setTextSize('scorecount', 45)
    setTextSize('timecount', 45) 
end

function onUpdate()
    setTextString('missescount', '     ' .. getProperty('songMisses'))
    setTextString('scorecount', '        ' .. getProperty('songScore'))
    setTextString('timecount', '       '  .. getTextString('timeTxt'))

    for i=0,3 do
       noteTweenAlpha(i+0, i, math.floor, 0.3)
    end
end

function onCreate()
    makeLuaSprite('bfhud', 'bfhud', 1050, 615)
    addLuaSprite('bfhud', true)
    setObjectCamera('bfhud', 'hud')
end

function onUpdatePost(elapsed)
    if hidestuff == true then
        removeLuaSprite('bfhud', false)

        removeLuaText('score', false)
        removeLuaText('time', false)
        removeLuaText('misses', false)

        removeLuaText('scorecount', false)
        removeLuaText('timecount', false)
        removeLuaText('missescount', false)

        setProperty('healthBar.alpha', 0)

        setProperty('iconP1.alpha', 0)
    
        setProperty('iconP2.alpha', 0)
    
    else
        addLuaSprite('bfhud')

        addLuaText('score')
        addLuaText('time')
        addLuaText('misses')

        addLuaText('scorecount')
        addLuaText('timecount')
        addLuaText('missescount')

        setProperty('healthBar.alpha', 1)

        setProperty('iconP1.alpha', 1)
    
        setProperty('iconP2.alpha', 1)
    end
end

function onStepHit()
    if curStep == 1471 then
        hidestuff = true
    end

    if curStep == 1503 then
        hidestuff = false
    end

    if curStep == 2016 then
        hidestuff = true
    end

    if curStep == 2048 then
        hidestuff = false
    end

    if curStep == 2336 then
        hidestuff = true
        for i = 0, 4, 1 do
            setPropertyFromGroup('playerStrums', i, 'alpha', 0)
        end
    end

    if curStep == 2479 then
        noteTweenAlpha("noteGone5", 4, 1, 2, "quartInOut");
        noteTweenAlpha("noteGone6", 5, 1, 2, "quartInOut");
        noteTweenAlpha("noteGone7", 6, 1, 2, "quartInOut");
        noteTweenAlpha("noteGone8", 7, 1, 2, "quartInOut");
    end
end