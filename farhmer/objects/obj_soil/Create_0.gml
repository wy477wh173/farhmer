//untilled by default
state = 0
soil_sprite = spr_soil
planted = 0
plant_starttime = 0
plant_finishtime = 0
plant_timediff = 0

sprite_index = soil_sprite

last_water = 0  

plantid = 0

return_item = 0
return_stack = 0
growspr = spr_none
grow_frame = 0

watered = 0
depth =depth_floor
seed_counter = 30 * irandom_range(30,300)

check_free = 1
plant_seed = inv_none

if(global. start_time < 0)
{global. save_game = 1 }