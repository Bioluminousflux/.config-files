record_start=1
function conky_record()
if record_start==1 then--run at script start 
os.execute("killall xdotool &")
os.execute("xdotool search --name 'clicky' behave %@ mouse-click getmouselocation >> /tmp/xdo &")
record_start=0
end
return ""
end--function
