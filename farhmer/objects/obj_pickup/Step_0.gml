draw_info = 0
spr= global. item_array[eyed,3]
name = global. item_array[eyed,1]
desc = global. item_array[eyed,2]
type = global. item_array[eyed,4]
mask_index = spr

if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_player,false,true))
{
    //scr_inventory_transactitem(eyed,stack)
    scr_inventory_additem(eyed,stack)
    instance_destroy()
}

if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_cursor,false,true))
{
    draw_info = 1
}

//crawl out from under a grown plant
if(collision_point(x,y, obj_soil,false,true))
{
    nearest = instance_nearest(x,y, obj_soil)
    if(instance_exists(nearest))
    {
        nearest_dist = point_distance(x,y, nearest.x,nearest.y)
        motion_set(point_direction(nearest.x,nearest.y, x,y),nearest_dist / 2)
    }
}else{motion_set(0,0)}