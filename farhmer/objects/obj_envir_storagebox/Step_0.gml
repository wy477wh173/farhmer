
if(activated = 0)
{
    if(collision_rectangle(bbox_left,bbox_top, bbox_right,bbox_bottom,obj_cursor,false,true))
    {
        obj_player.movable = 0
        obj_cursor.state = 1
        
        if(obj_cursor.use = 1)
        {activated = 1;cursor_spaced = 0}
    }
}

if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_pickup,false,true))
{
    pickup = instance_nearest(x,y,obj_pickup)
    scr_inventory_storeitem(pickup.eyed,1)
    instance_destroy(pickup)
    scr_spawn_particle_generic(x,y, 5)
}

if(activated = 1)
{
    obj_player.movable = 0
}