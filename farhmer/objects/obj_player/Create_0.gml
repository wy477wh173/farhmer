depth = depth_actor


movement_targetx =x
movement_targety = y
movement_speed = 4
movement_targetdir = 0
movable = 1

player_dir = 0
player_sprite = spr_player_crow
save_frequency = 55 * room_speed // save once every 55 seconds
zero_waiter = 0
inv_scrubtime = 0

frame = 0
if(!instance_exists(obj_cursor))
{instance_create(x,y,obj_cursor)}
if(!instance_exists(obj_draw_hud))
{instance_create(x,y,obj_draw_hud)}

mmb_counter = 0
mmb_counter_inst = 30
mmb_counter_max = 30

player_spriteset = "crow"
name = "Rick"