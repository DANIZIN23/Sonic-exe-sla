function onCreate()
	-- background shit
	
	makeLuaSprite('stag', 'tarnbg', -800, 70);
	setScrollFactor('stag', 1, 1);
	makeLuaSprite('stag2', 'tarnbg2', -800, 70);
	setScrollFactor('stag2', 1, 1);	
	makeLuaSprite('stagfg', 'tarnfg', -800, 70);
	setScrollFactor('stagfg', 1.3, 1.3);	
	makeLuaSprite('stagbgballs', 'tarnbgballs', -800, 70);
	setScrollFactor('stag', 1, 1);
	makeLuaSprite('stagbgballs2', 'tarnbgballs2', -800, 70);
	setScrollFactor('stag2', 1, 1);	
	makeLuaSprite('greenpills', 'greenpills', -800, 70);
	setScrollFactor('greenpills', 1, 1);
	makeLuaSprite('invisi', 'invis', -800, 70);
	setScrollFactor('stag2', 1, 1);	
	
	
	addLuaSprite('invisi', false);
	addLuaSprite('greenpills', false);
	addLuaSprite('stag2', false);
	
	addLuaSprite('stag', false);
	addLuaSprite('stagfg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end