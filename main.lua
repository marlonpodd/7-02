-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 100/255, 100/255, 200/255 )
-- Character move

local dPad = display.newImageRect( "./assets/d-pad.png", 200, 200 )
dPad.x = 160
dPad.y = 400
dPad.id = "d-pad"

local upArrow = display.newImageRect( "./assets/upArrow.png", 45, 35 )
upArrow.x = 160
upArrow.y = 325
upArrow.id = "up arrow"

local downArrow = display.newImageRect( "./assets/downArrow.png", 45, 35 )
downArrow.x = 160
downArrow.y = 475
downArrow.id = "down arrow"

local leftArrow = display.newImageRect( "./assets/leftArrow.png", 35, 45 )
leftArrow.x = 85
leftArrow.y = 400
leftArrow.id = "left arrow"

local rightArrow = display.newImageRect( "./assets/rightArrow.png", 35, 45 )
rightArrow.x = 235
rightArrow.y = 400
rightArrow.id = "right arrow"

--character
local waluigi = display.newImageRect( "./assets/tpose.png", 250, 250 )
waluigi.x = display.contentCenterX
waluigi.y = 200
waluigi.id = "the character"

--functions 
function upArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( waluigi, { 
        	x = 0, -- move 0 in the x direction 
        	y = -50, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( waluigi, { 
        	x = 0, -- move 0 in the x direction 
        	y = 50, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

function leftArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( waluigi, { 
        	x = -50, -- move 0 in the x direction 
        	y = 0, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

function rightArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( waluigi, { 
        	x = 50, -- move 0 in the x direction 
        	y = 0, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
leftArrow:addEventListener( "touch", leftArrow )
rightArrow:addEventListener( "touch", rightArrow )