///scr_inventory_useslot(slot)
//this should be our item use interpreter
var slot = argument0

var item = global. inventory_array[slot,0]




if(global. item_array[item,4] = inv_none)
{
    //if place is not free
    if(collision_point(obj_cursor.x, obj_cursor.y,obj_pot,false,true))
    {
        global. save_game = 1
        var pot = instance_nearest(obj_cursor.x, obj_cursor.y,obj_pot)
        pot.destroyme = 1
    }
}

if(global.item_array[item, 4] = type_flower)//---------------------------flower potting
{
    //place a vase if place is free
    if(place_free(obj_cursor.x, obj_cursor.y))
    {
        global. save_game = 1
        scr_inventory_transactitem(item,-1)
        scr_spawn_pot(obj_cursor.x,obj_cursor.y,item)
    }
    else
    {
        //if place is not free
        if(collision_point(obj_cursor.x, obj_cursor.y,obj_pot,false,true))
        {
            var pot = instance_nearest(obj_cursor.x, obj_cursor.y,obj_pot)
            pot.destroyme = 1
        }
    }
}


if(global. item_array[item, 4] = type_seed)
{
    if(collision_point(obj_cursor.x, obj_cursor.y,obj_soil,false,1))
    {
        var soil = instance_position(obj_cursor.x, obj_cursor.y,obj_soil)
        
        if(soil.state = 1)
        {
            global. save_game = 1
            soil.plant_seed = item
            //scr_inventory_transactitem(item, -1) // object is subtracted by soil
        }
    }
}

if(global. item_array[item,4] = type_hoe)
{
    if(collision_point(obj_cursor.x, obj_cursor.y,obj_soil,false,1))
    {
        var soil = instance_position(obj_cursor.x, obj_cursor.y,obj_soil)
        var update = 1
        global. save_game = 1
        
        if(soil.state = 0 && update = 1)
        {
            soil.state = 1
            update = 0
        }
        
        if(soil.state != 0 && update = 1)
        {
            update = 0
            instance_destroy(soil)
        }
    }
    else
    {
        scr_spawn_soil(obj_cursor.x, obj_cursor.y)
    }
}

if(global. item_array[item,4] = type_shear)
{
    if(collision_point(obj_cursor.x, obj_cursor.y,obj_soil,false,true))
    {//if grown, cut reward
        global. save_game = 1
        var soil = instance_position(obj_cursor.x, obj_cursor.y,obj_soil)
        if(soil.state = 3)
        {
            scr_spawn_pickup(soil.return_item,soil.return_stack,soil.x,soil.y)
            soil.state = 0
        }
    }
    
    if(collision_point(obj_cursor.x, obj_cursor.y,obj_pot,false,true))
    {//if grown, cut reward
        var pot = instance_position(obj_cursor.x, obj_cursor.y,obj_pot)
        //scr_spawn_pickup(soil.return_item,soil.return_stack,soil.x,soil.y)
        pot.destroyme = 1
    }
}

if(global. item_array[item,4] = type_pruner)
{
    if(collision_point(obj_cursor.x, obj_cursor.y,obj_soil,false,true))
    {//if grown, cut reward
        global. save_game = 1
        var soil = instance_position(obj_cursor.x, obj_cursor.y,obj_soil)
        if(soil.state = 3)
        {
            soil.state = 2//growing state
            soil.plant_finishtime = global. current_datetime + ((soil.plant_finishtime - soil.plant_starttime) / 2)//reset growth, but only for 1/2 the time
            scr_spawn_pickup(soil.plantid,1,soil.x,soil.y)
        }
    }
}

if(global. item_array[item,4] = type_wateringcan)
{
    if(collision_point(obj_cursor.x, obj_cursor.y,obj_soil,false,true))
    {//if growing, reduce time by 10 minutes
        global. save_game = 1
        var soil = instance_position(obj_cursor.x, obj_cursor.y,obj_soil)
        if(soil.state = 2)
        {
            //soil.state = 2//growing state
            if(abs(soil.last_water - global. current_datetime) >= 3600)//only allow once per hour
            {
                soil.plant_finishtime = soil.plant_finishtime + -global. item_array[item,9]// reduce grow time by 10 minutes
                scr_spawn_particle_water(obj_cursor.x, obj_cursor.y, 5)
                soil.last_water = global. current_datetime
                //scr_spawn_pickup(soil.plantid,1,soil.x,soil.y)
            }
        }
    }
}
