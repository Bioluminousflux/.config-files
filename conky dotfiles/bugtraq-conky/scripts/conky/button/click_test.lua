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
--BOTON 1 APACHE START
--button setup - this section for an on/off button 
local button_name="apache start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=108.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={0,1,0,1}--if button is clicked on it will be drawn green
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/apache2 start &}")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--BOTON 2 APACHE STOP
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="apache stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=108.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/apache2 stop &}")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 1 AUTOPSY ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="autopsy start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=128.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("/bugtraq/tools/forensics/autopsy/./autopsy &")
os.execute ("sleep 3")
os.execute ("firefox http://localhost:9999/autopsy &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 AUTOPSY OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="autopsy stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=128.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu pkill autopsy &}")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################



--BOTON 1 BEEF ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="beef start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=148.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gnome-terminal --command=/bugtraq/scripts/conky/scripts/./beef_start.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 BEEF OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="beef stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=148.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /bugtraq/scripts/conky/scripts/./beef_stop.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################




--BOTON 1 EVILGRADE ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="evilgrade start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=168.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gnome-terminal --command=/bugtraq/scripts/conky/scripts/./evilgrade_start.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 EVILGRADE OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="evilgrade stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=168.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /bugtraq/scripts/conky/scripts/./evilgrade_stop.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################





--BOTON 1 GreenBone ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="GreenBone start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=188.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /etc/init.d/greenbone-security-assistant start &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 GreenBone OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="GreenBone stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=188.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/greenbone-security-assistant stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################




--BOTON 1 metasploit ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="I2P start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=208.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu sudo /etc/init.d/metasploit start &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 metasploit OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="I2P stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=208.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu sudo /etc/init.d/metasploit stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################



--BOTON 1 nessus ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="MSF start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=228.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu sudo /etc/init.d/nessusd start &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 nessus OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="MSF stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=228.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/nessusd stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################


--BOTON 1 openvas ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Nessus start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=248.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /etc/init.d/openvas-manager start &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 openvas OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Nessus stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=248.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/openvas-manager stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################


--BOTON 1 Osiris ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="OpenVas start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=268.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu osiris-sps &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 Osiris OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="OpenVas stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=268.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu pkill osiris-sps &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################



--BOTON 1 Set ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Osiris start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=288.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("sudo gnome-terminal --command=/bugtraq/scripts/set/./set_start.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 Set OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Osiris stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=288.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /bugtraq/scripts/conky/scripts/./set_stop.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################


--BOTON 1 snort ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Polipo start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=308.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /bugtraq/scripts/snort/./snort_launcher.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 snort OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Polipo stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=308.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /bugtraq/scripts/snort/./snort_stop.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################



--BOTON 1 vbox ON
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Set start"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=328.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /etc/init.d/virtualbox start &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 vbox OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Set stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=328.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/virtualbox stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################


--BOTON 1 wifizoo START
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Snort restart"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=348.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /bugtraq/scripts/conky/scripts/./wifizoo_start.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 wifizoo OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="Snort stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=348.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /bugtraq/scripts/conky/scripts/./wifizoo_stop.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################

--BOTON 1 XPLICO START
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="tor restart"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=368.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /bugtraq/scripts/conky/scripts/./xplicostart.sh &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 XPLICO OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="tor stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=368.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/xplico stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################

--BOTON 1 postgress START
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="VirtualBox restart"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=398.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /etc/init.d/postgresql start &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 postgres OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="VirtualBox stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=398.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/postgresql stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################

--BOTON 1 mysql START
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="WifiZoo restart"
local blx=198.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=418.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
os.execute ("gksu /etc/init.d/mysql start &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)


--BOTON 2 mysql OFF
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="WifiZoo stop"
local blx=235.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=418.5--bottom left x coordinate of click area
local height=15--height of click area
local width=30.5--width of click area
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
color={1,0,0,1}--if button is clicked on it will be drawn red
fill=0
os.execute ("echo 'button was clicked'")
os.execute ("gksu /etc/init.d/mysql stop &")
else
color={1,1,1,0}--if button is not on it will be drawn white
fill=0
end
--draw the button ####################
buttondraw(blx,bly,height,width,color,fill)
--#################################################################################################

--#################################################################################################
--Aplications
--#################################################################################################


--BOTON 1 CHAT OPEN
--#################################################################################################
--#################################################################################################
--button setup - this section for an execute type button
local button_name="chat"
local blx=23.5--bottom left x coordinate of click area, the .5 makes the 1 pixel box line sharp
local bly=480.5--bottom left x coordinate of click area
local height=35.5--height of click area
local width=80.5--width of click area
--##############################################################
--calculate if clisck was inside box and set actions#############
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
os.execute ("gksu /etc/init.d/i2p start &")
os.execute ("xchat &")
else
color={1,1,1,0}--if button is not on it will be drawn white
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
