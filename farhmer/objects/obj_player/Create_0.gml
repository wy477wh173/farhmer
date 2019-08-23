depth = depth_actor


movement_targetx =x
movement_targety = y
movement_speed = 4
movement_targetdir = 0
movable = 1

player_dir = 0
player_sprite = spr_player_crow
zero_waiter = 0

frame = 0
if(!instance_exists(obj_cursor))
{instance_create(x,y,obj_cursor)}
if(!instance_exists(obj_draw_hud))
{instance_create(x,y,obj_draw_hud)}


player_spriteset = "crow"
name = "Rick"