--[[conky interactive log messages by mrpeachy 03/12
http://youtu.be/SQVX3sgXdnA
call in conkyrc in a similar manner to this
lua_load /home/mcdowall/lua/filename.lua
lua_draw_hook_pre draw_main

in the conkyrc you also need to add this setting

own_window_title clicky

or you can set your own window title then edit towards the bottom of the script
so that any instances of clicky are replaced with the title you set
avoid spaces in title name


see interactive weather thread on crunchbang forum
link soon

]]

require 'cairo'
start=1
buttons={}
buttons[1]=0
text_table={}
--------------------------------------------------------------------------------
function conky_main()
if conky_window == nil then return end
local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
cr = cairo_create(cs)
local updates=tonumber(conky_parse('${updates}'))
if updates>5 then
--#########################################################################################################
--get click coordinates
localx,localy=clickfunction()--dont edit
--##############################################
--SETTINGS #####################################
--set message length
local tail_length=1
commands={--enter locations of files
"/var/log/dmesg",
"/var/log/alternatives.log",
"/var/log/alternatives.log.1",
"/var/log/apt/history.log",
"/var/log/apt/term.log",
"/var/log/ConsoleKit/history",
"/var/log/ConsoleKit/history.1",
"/var/log/dpkg.log",
"/var/log/dpkg.log.1",
"/var/log/fontconfig.log",
"/var/log/installer/hardware-summary",
"/var/log/installer/lsb-release",
"/var/log/nvidia-installer.log",
"/var/log/pm-powersave.log",
"/var/log/pm-powersave.log.1",
"/var/log/sgfxi/sgfxi.log.1",
"/var/log/smxi.log",
"/var/log/Xorg.0.log",
"/var/log/Xorg.1.log",
"/var/log/Xorg.2.log",
}
--setup list table
list={--these set the text for the section buttons, need to match up with commands table
"dmesg",
"alternatives.log",
"alternatives.log.1",
"apt/history.log",
"apt/term.log",
"ConsoleKit/history",
"ConsoleKit/history.1",
"dpkg.log",
"dpkg.log.1",
"fontconfig.log",
"installer/hardware-summary",
"installer/lsb-release",
"nvidia-installer.log",
"pm-powersave.log",
"pm-powersave.log.1",
"sgfxi/sgfxi.log.1",
"smxi.log",
"Xorg.0.log",
"Xorg.1.log",
"Xorg.2.log",
}
--set list font and size
local list_font="mono"
local list_fsize=12
local list_oncolor={1,0,0,1}--red green blue alpha
local list_offcolor={1,1,1,1}--red green blue alpha
--set text properties for LOG main button
local log_text="LOGS:"
local log_font="sans"
local log_fsize=18
--set button top left corner coordinates and width/heioght
local log_tlx=20.5
local log_tly=20.5
--log color
local log_oncolor={1,0,0,1}
local log_offcolor={1,1,1,1}
--need to set the top left corner of the top button in the list
local list_tlx=100.5
local list_tly=20.5
--list colors
local list_oncolor={1,0,0,1}
local list_offcolor={1,1,1,1}
--set gap between buttons
local list_gap=5
--setup sections###############################
--set topl left coords and size of close button
local tlx_close=300.5
local tly_close=20.5
--set text properties for CLOSE main button
local close_text="close"
local close_font="sans"
local close_fsize=18
--set close color
local close_oncolor={1,0,0,1}
local close_offcolor={1,1,1,1}
--set properties for section display text
local section_font="mono"
local section_fsize=10
local section_blx=20.5
local section_bly=50.5
--set how many lines to show
local max_lines=50
local line_height=12
--set section heading color
local heading_color={1,1,0,1}
--set section text color
local section_color={1,1,1,1}
--END OF SETTINGS ########################################
--########################################################
--calculate number of entries in the above table
number_in_list=#list
--main button, button1 ###################################
--get dimensions of log text
cairo_select_font_face (cr, log_font, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
cairo_set_font_size (cr, log_fsize)
--get font height
extents=cairo_text_extents_t:create()
cairo_text_extents(cr,log_text,extents)
local log_height=extents.height
local log_width=extents.width
--########################################################
--calculate if click was inside box
if localx>=log_tlx and localx<=log_tlx+log_width and localy>=log_tly and localy<=log_tly+log_height and buttons[1]~=1 then
buttons[1]=1
elseif localx>=log_tlx and localx<=log_tlx+log_width and localy>=log_tly and localy<=log_tly+log_height and buttons[1]==1 then
buttons[1]=0
end
if buttons[1]==1 then
color=log_oncolor
elseif buttons[1]==0 then
color=log_offcolor
end
cairo_set_source_rgba (cr,color[1],color[2],color[3],color[4])
--[[draw the box for positioning purposes, you can comment out the draw commands later
cairo_set_line_width (cr,1)
cairo_rectangle (cr,tlx,tly,width,height)
cairo_stroke (cr)--]]
--write title
cairo_move_to (cr,log_tlx,log_tly+log_height)
cairo_show_text (cr,log_text)
cairo_stroke (cr)
--------------------------------------------------------------------------------------
--if the main button is clicked then all this stuff will happen
if buttons[1]==1 then 
--generate buttons
cairo_select_font_face (cr, list_font, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
cairo_set_font_size (cr, list_fsize)
--get font height
local getheight_text="the quick brown fox jumps over the lazy dog"
extents=cairo_text_extents_t:create()
cairo_text_extents(cr,getheight_text,extents)
list_height=extents.height--dont localize
for i=1,number_in_list do --use a for loop to generate all the buttons with a single code chunk
--###########################################################
--buttons--##################################################
--calculate width and height based on text and font and fsize
local list_text=list[i]
extents=cairo_text_extents_t:create()
cairo_text_extents(cr,list_text,extents)
local list_width=extents.width
--###########################################################
--calculate if click is inside buttons
	if localx>=list_tlx and localx<=list_tlx+list_width and localy>=list_tly+((list_gap+list_height)*(i-1)) and localy<=list_tly+((list_gap+list_height)*(i-1))+list_height and buttons[tostring("button1_"..i)]~=1 then
	buttons[tostring("button1_"..i)]=1
	elseif localx>=list_tlx and localx<=list_tlx+list_width and localy>=list_tly+((list_gap+list_height)*(i-1)) and localy<=list_tly+((list_gap+list_height)*(i-1))+list_height and buttons[tostring("button1_"..i)]==1 then
	buttons[tostring("button1_"..i)]=0
	end
if buttons[tostring("button1_"..i)]==1 then
color=list_oncolor
--also going to turn off all the other buttons
		n=i
		for i=1,number_in_list do
			if i~=n then
			buttons[tostring("button1_"..i)]=0
			end
		end
		buttons[1]=0
else--if buttons[tostring("button1_"..i)]==0 then
color=list_offcolor
end
cairo_set_source_rgba (cr,color[1],color[2],color[3],color[4])
--[[draw the box for positioning purposes, you can comment out the draw commands later
cairo_set_line_width (cr,1)
cairo_rectangle (cr,tlx,tly+((list_gap+height)*(i-1)),width,height)
cairo_stroke (cr)--]]
--------------------------------------------------------------------------------------
--write titles
cairo_move_to (cr,list_tlx,list_tly+((list_gap+list_height)*(i-1))+list_height)
cairo_show_text (cr,list_text)
cairo_stroke (cr)
end--for loop
end--if main button=1
--############################################################
--activate the function
--get dimensions of close text
cairo_select_font_face (cr, close_font, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
cairo_set_font_size (cr, close_fsize)
--get font height
extents=cairo_text_extents_t:create()
cairo_text_extents(cr,close_text,extents)
local height_close=extents.height
local width_close=extents.width
for i=1,number_in_list do
	if buttons[tostring("button1_"..i)]==1 then
if get_text~=1 then
text_table={}
--do the thing and put it in table
	local file = assert(io.open(tostring(commands[i]), "r"))
	for line in file:lines() do 
	table.insert(text_table,line)
	end
	file:close()
	get_text=1
end
	cairo_set_source_rgba (cr,section_color[1],section_color[2],section_color[3],section_color[4])	
	cairo_select_font_face (cr, section_font, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
	cairo_set_font_size (cr, section_fsize)
	for i=1,max_lines do
	cairo_move_to (cr,section_blx,section_bly+((i-1)*line_height))
	cairo_show_text (cr,text_table[i])
	cairo_stroke (cr)	
	end
	cairo_set_source_rgba (cr,heading_color[1],heading_color[2],heading_color[3],heading_color[4])	
	cairo_select_font_face (cr, list_font, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
	cairo_set_font_size (cr, list_fsize)
	cairo_move_to (cr,list_tlx,list_tly+list_height)
	cairo_show_text (cr,list[i])
	cairo_stroke (cr)	
	--loadstring('button1_'..i..'display("'..section_font..'",'..section_fsize..','..section_blx..','..section_bly..')')()
	--close button- turns everything off back to start position
	--calculate if click was inside box
	if localx>=tlx_close and localx<=tlx_close+width_close and localy>=tly_close and localy<=tly_close+height_close and buttons[2]~=1 then
	buttons[2]=1
	elseif localx>=tlx_close and localx<=tlx_close+width_close and localy>=tly_close and localy<=tly_close+height_close and buttons[2]==1 then
	buttons[2]=0
	end
	if buttons[2]==1 then
	color=close_oncolor	
			for i=1,number_in_list do
				buttons[tostring("button1_"..i)]=0
			end
			buttons[1]=0
			buttons[2]=0
			get_text=0
	else
	color=close_offcolor
	end
	cairo_set_source_rgba (cr,color[1],color[2],color[3],color[4])
	--[[draw the box for positioning purposes, you can comment out the draw commands later
	cairo_set_line_width (cr,1)
	cairo_rectangle (cr,tlx_close,tly_close,width_close,height_close)
	cairo_stroke (cr)--]]
	--write titles
	cairo_select_font_face (cr, close_font, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
	cairo_set_font_size (cr, close_fsize)
	cairo_move_to (cr,tlx_close,tly_close+height_close)
	cairo_show_text (cr,close_text)
	cairo_stroke (cr)
	end--if button =1
end--for i=
--#########################################################################################################
end-- if updates>5
cairo_destroy(cr)
cairo_surface_destroy(cs)
cr=nil
end--end main function

function clickfunction()
--start click logging and calculations ##########################################
if start==1 then
xdot=conky_parse("${if_running xdotool}1${else}0${endif}")
	if tonumber(xdot)==1 then
	os.execute("/usr/bin/killall xdotool && echo 'xdo killed' &")
	end
os.execute("xdotool search --name clicky behave %@ mouse-click getmouselocation >> /tmp/xdo &")
start=nil--]]
local f = io.popen("xwininfo -name 'clicky' | grep 'Absolute'")
geometry = f:read("*a")
f:close()
geometry=string.gsub(geometry,"[\n]","")
s,f,abstlx=string.find(geometry,"X%p%s*(%d*)")
s,f,abstly=string.find(geometry,"Y%p%s*(%d*)")
end--if start=1 ######################################
--click calculations #################################
local f=io.open("/tmp/xdo")
click=f:read()
f:close()
	if click~=nil then
	local f = io.open("/tmp/xdo","w")
	f:write("")
	f:close() 
	end--if click=nil
if click==nil then click="x:0 y:0 " end
s,f,mousex=string.find(click,"x%p(%d*)%s")
s,f,mousey=string.find(click,"y%p(%d*)%s")
mousex=tonumber(mousex)
mousey=tonumber(mousey)
localx=mousex-abstlx
localy=mousey-abstly
--END CLICK CALCULATIONS #################################
return localx,localy
end--function
