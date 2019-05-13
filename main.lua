
-----------------------------------------------------------------------------------------

--

-- main.lua

-- april 1, 2019

-- by joshua van der Laan

-- to use if statements and generate random numbers

-- 

-----------------------------------------------------------------------------------------
--calculate button
local calculateButton = display.newImageRect( "./bigboy.jpg", 300, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = 240
calculateButton.id = " calculateButton "
 
local myGuessTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 160, 300, 60 )
myGuessTextfield.id = " myGuessTextField"

local screenText = display.newText( "Pick a number from 1 to 6: ", 160, 340, native.systemFont, 25 )
screenText:setFillColor( 255/255, 29/255, 96/255 )

local endText = display.newText( " ", 160, 450, native.systemFont, 25 )
endText:setFillColor( 255/255, 29/255, 96/255 )

print( "Pick a number from 1 to 6: " )

local function calculateButtontouch ( event)
	math.randomseed( os.time() )

	local numberToGuess = math.random( 1, 6 )
	local myGuess = tonumber( myGuessTextfield.text )

	if numberToGuess == myGuess then

    	print( "Correct" )
    	screenText.text = "Correct! Nice Job"
	else

		print( "Wrong, guess again!")
		print( "Correct answer was ", numberToGuess )
		screenText.text = ( "Wrong:( The answer was " ..numberToGuess )
	end

	print( "Please play again!" )
	print( "Your answer was ", myGuess )
	endText.text = "Please Play Again!!"

end		

calculateButton :addEventListener( "touch", calculateButtontouch )