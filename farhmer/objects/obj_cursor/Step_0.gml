x = mouse_x
y = mouse_y

//------------------------------stating for cursor
if(state = 0)
{//not clickable
    cursor_spr = spr_cursor_generic
}

//conditional use for diferent items (maybe make this rmouse?) currently triggered by middlemouse
if(use = 1)
{
    use = 0
}

if(state = 1)
{//clickable
    cursor_spr = spr_cursor_clickable
    if(till = 1)
    {
        if(collision_point(x,y,obj_soil,false,1))
        {
            //destroy soil
            instance_destroy(instance_nearest(x,y,obj_soil))
            scr_spawn_particle_generic(obj_cursor.x, obj_cursor.y,4)
        }
        till = 0
    }
    
}
else
{
    if(till = 1)
    {
        scr_spawn_soil(obj_cursor.x,obj_cursor.y)
        scr_spawn_particle_generic(obj_cursor.x, obj_cursor.y,4)
    }
}

if(state = 2)
{//clickable
    cursor_spr = spr_cursor_inaccessible
}


state = 0