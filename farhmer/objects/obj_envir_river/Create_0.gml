
last_login = global. last_checkin

current_login = global.current_datetime

river_startx = x
river_starty = y
river_endx = x + irandom_range(-64,64)
river_endy = room_height

flow_dir = point_direction(river_startx,river_stary)

// seconds per spawn 3600

//time since last checkin
timespan = current_login = last_login

//convert time since last checkin
number = floor(timespan / 3600)

while(number > 1)
{
    number += -1
    randx = lengthdir_x(randist,flow_dir)
    scr_spawn_pickup(scr_random_item(),1,randx, randy)
    
}