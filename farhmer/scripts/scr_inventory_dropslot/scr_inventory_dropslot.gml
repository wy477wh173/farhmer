///scr_inventory_dropslot(x,y,slot)
var xx = argument0
var yy = argument1
var xerp = argument2

if(global. inventory_array[xerp,0] != inv_none)
{
    //var spawnx = x + lengthdir_x(64,obj_player.player_dir)  
    //var spawny = y + lengthdir_y(64,obj_player.player_dir)
    scr_spawn_pickup(global. inventory_array[xerp,0],global. inventory_array[xerp,1],xx, yy)

    global. inventory_array[xerp,0] = inv_none
    global. inventory_array[xerp,1] = 0

}
