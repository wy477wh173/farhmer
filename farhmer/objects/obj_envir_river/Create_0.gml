
last_login = global. river_lastdrop
depth = depth_floor

current_login = global.current_datetime

river_startx = x
river_starty = y
river_endx = x + irandom_range(-64,64)
river_endy = room_height
//global. river_lastdrop = 1565493285

riverlength = point_distance(river_startx, river_starty, river_endx, river_endy)

flow_dir = point_direction(river_startx,river_starty, river_endx, river_endy)

// seconds per spawn 3600

//time since last checkin
timespan = current_login - last_login

//convert time since last checkin
number = floor(timespan / 3600)
randomize()
if(number > 12)
{number = 12}    

while(number > 0)
{
    number += -1
    randist = irandom(riverlength)
    
    randx = river_startx + lengthdir_x(randist,flow_dir) + 128
    randy = river_starty + lengthdir_y(randist,flow_dir)
    
    scr_spawn_pickup(scr_random_item(),1,randx, randy)
    global. river_lastdrop = global. current_datetime 

}