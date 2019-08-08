flower_sprite = global. item_array[flower,3]

flowerx =x - (sprite_get_width(flower_sprite) / 2)
flowery = y - (sprite_get_height(flower_sprite) *.75)

if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_cursor,false,true))
{
    global. mouseover_string = "A Planter Pot with a " + global. item_array[flower,1] +  " planted in it."
    
    if(obj_cursor.interact = 1)
    {
        scr_spawn_pickup(flower,1,x,y)
        instance_destroy()
    }
}

if(destroyme = 1)
{
    instance_destroy()
    scr_spawn_pickup(flower,1,x,y)
    scr_spawn_particle_generic(x,y,5)
}