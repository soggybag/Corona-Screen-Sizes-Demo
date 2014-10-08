-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Hide the status bar 
display.setStatusBar( display.HiddenStatusBar )


-- This example shows how to create a project that will fit almost any screen size. 
-- You must use the config file that is in the folder with this project. This file
-- config.lua has been modified and different from the file that is automatically
-- generated when creating a new project. 

-- When creating a background and other art use the screens.png file in this project
-- for reference. 

-- Test this project using the Corona Simulator. Switch between different devices. 
-- Notice the background image always covered the screen while some of the image 
-- always cropped. If the screen is wide like the ipad, the top cropped and you 
-- see more of the edges. If the screen is tall like the Galaxy S3, or iPhone 5
-- you will see more at the top and bottom while the sides get cropped. 

-- The background image is 360 by 570. You can use double these dimensions for high 
-- resolution devices. 720 by 1140 

--[[
600 / 320 = 1.875 –Kindle Fire & Nook
640 / 320 = 2.0 –iPhone 5
768 / 360 = 2.13 –iPad
800 / 320 = 2.5 –Kindle Fire HD / Nexus7
1200 / 320 = 3.75 –Kindle Fire HD 8.9
1536 / 360 = 4.26 –Retina iPad

5x images on 1080p phones and higher resolutions:

1080 / 320 = 3.375 –HTC One
1200 / 320 = 3.75 –Kindle Fire HD 8.9
1440 / 320 = 4.5 ###### For the new 1440×2560 resolution ######
1536 / 360 = 4.26 –Retina iPad

So same memory usage but better quality images?
]]

-- Create a background image

-- Add a full screen image  
local back = display.newImageRect( "screens.png", 360, 570 )


-- Use the display.contentCenterX, and Y properties to find the center of screen for 
-- any screen size.
back.x = display.contentCenterX
back.y = display.contentCenterY


-- Make a red box 100x100
local box_red = display.newRect( 0, 0, 100, 100)
box_red:setFillColor(1, 0, 0, 1)

-- Position an element based on the dimensions of the screen 
-- Place the box in the upper right: contentWidth - width / 2
box_red.x = display.contentWidth - 50
box_red.y = 50


-- Make a green box 
local box_green = display.newRect( 0, 0, 80, 40 )
box_green:setFillColor( 0, 1, 0, 1 )

-- Place the green box near the bottom edge using contentHeight
-- Use contentHeight - height / 2
box_green.x = display.contentCenterX
box_green.y = display.contentHeight - 20




-- Place a box in the center of the screen that is the width of the screen.
-- Use contentCenterY, and contentWidth
-- Make a yellow box
local box_yellow = display.newRect( 0, 0, display.contentWidth, 40 )
box_yellow:setFillColor( 1, 1, 0, 1 )
box_yellow.x = display.contentCenterX
box_yellow.y = display.contentCenterY





