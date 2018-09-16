--[[click tutorial lua by mrpeachy - thanks to barrybarrykelly for the xdotool method and gmonti for finding the deb files for the xdotool
in conkyrc, in addition to regular settings:

own_window_title clicky

TEXT
]]

require 'cairo'

main_start=1-- this starts the clickfunction
buttons={}--this table ini9tially holds the values from the buttons

function conky_main()
if conky_window == nil then return end
local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
cr = cairo_create(cs)
local updates=tonumber(conky_parse('${updates}'))
if updates>5 then
--#################################################################################################
localx,localy,localnowx,localnowy=clickfunction()--this line activates the clickfunction and sets the click coordinates
--#################################################################################################
--#################################################################################################
--button setup - this section for an on/off button 
--BOTON 1 CONKY START
--button setup - this section for an on/off button 
local button_name="conky start"
local blx=8.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=70.5--bottom left x coordinate of click area
local height=70--height of click area
local width=70.5--width of click area
--##############################################################
--##############################################################
--calculate if click was inside box and set actions#############
--best to keep the button calculations seperate to the actions##
if localx>=blx and localx<=blx+width and localy<=bly and localy>=bly-height and buttons[1]~=1 then
buttons[tostring(button_name)]=1
else
buttons[tostring(button_name)]=0 end
--end of calculations ##########################################
--##############################################################
--use the output of the button to set other conditions #########
--set color based on button, but other things can be set here too such as executing a shell command
if buttons[tostring(button_name)]==1 then
color={0,1,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("pkill conky")
os.execute ("conky -c /bugtraq/scripts/conky/.conkyrc")
else
color={1,1,1,1}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color)









--#################################################################################################



--#########################################################################################################
end-- if updates>5
cairo_destroy(cr)
cairo_surface_destroy(cs)
cr=nil
return ""
end-- end main function

--button drawing function
function buttondraw(blx,bly,height,width,color,fill)
cairo_set_line_width (cr,1)
cairo_set_source_rgba (cr,color[1],color[2],color[3],color[4])
cairo_rectangle (cr,blx,bly,width,-height)
if fill==0 then
cairo_stroke (cr)
elseif fill==1 then
cairo_fill (cr)
end
end--of buttondraw function

--clickfunction, this runs xdotool and xwininfo and reads the coordinates of clicks
function clickfunction()
--start click logging and calculations ##########################################
if main_start==1 then--run at script start 
local f = io.popen("xwininfo -name 'clicky' | grep 'Absolute'")
geometry = f:read("*a")
f:close()
local geometry=string.gsub(geometry,"[\n]","")
--print (geometry)
s,f,abstlx=string.find(geometry,"X%p%s*(%d*)")
s,f,abstly=string.find(geometry,"Y%p%s*(%d*)")
main_start=nil
end--if click_start=1 ######################################
--click calculations #################################
local f=io.open("/tmp/xdo")
click=f:read()
f:close()
if click==nil then click="x:0 y:0 " end
local s,f,mousex=string.find(click,"x%p(%d*)")
local s,f,mousey=string.find(click,"y%p(%d*)")
localx=tonumber(mousex)-abstlx
localy=tonumber(mousey)-abstly
--get now location
local f = io.popen("xdotool getmouselocation")
mousenow = f:read("*a")
f:close()
local s,f,mousenowx=string.find(mousenow,"x%p(%d*)%s")
local s,f,mousenowy=string.find(mousenow,"y%p(%d*)%s")
localnowx=tonumber(mousenowx)-abstlx
localnowy=tonumber(mousenowy)-abstly
--END CLICK CALCULATIONS #################################
return localx,localy,localnowx,localnowy
end--function
