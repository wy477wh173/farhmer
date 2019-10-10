if(check_free = 1)
{
    if(collision_point(x,y,obj_soil,false,true))
    {
        opponent = collision_point(x,y,obj_soil,false,true)
        //if i'm not empty
        if(plantid != 0)
        {//check if other is empty
            if(opponent.plantid = 0)
            {instance_destroy(opponent)}
        }
        //if I'm empty, kill me
        //if(plantid = 0)
        //{instance_destroy()}
    }
    
    check_free = 1
}


if(plant_seed != inv_none)
{
    state = 2
    planted = 1
    plantid = plant_seed //global. inventory_array[global. inventory_select,0] // this is now pulled from the itemuse
    
    gdays = global. item_array[plantid,5]
    ghours = global. item_array[plantid,6]
    gminutes = global. item_array[plantid,7]
    gseconds = global. item_array[plantid,8]
    
    return_item = global. item_array[plantid,11]
    return_stack = global. item_array[plantid,12]
    
    growspr = global. item_array[plantid,13]
        
    scr_inventory_transactslot(global. inventory_select,-1)
    
    plant_starttime = global. current_datetime
    plant_finishtime = scr_set_endtime(gdays,ghours,gminutes,gseconds)
    plant_timediff = plant_finishtime - plant_starttime
    
    plant_seed = inv_none
}

if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_cursor,false,true))
{
    
    //if(obj_cursor.interact = 1 )
    //{
        /*
        if( state = 1)
        {
            if(global. inventory_array[global. inventory_select,1] > 0 && global. item_array[global. inventory_array[global. inventory_select,0],4] = type_seed)
            {
                state = 2
                planted = 1
                plantid = global. inventory_array[global. inventory_select,0]
                
                gdays = global. item_array[plantid,5]
                ghours = global. item_array[plantid,6]
                gminutes = global. item_array[plantid,7]
                gseconds = global. item_array[plantid,8]
                
                return_item = global. item_array[plantid,11]
                return_stack = global. item_array[plantid,12]
                
                growspr = global. item_array[plantid,13]
                
                scr_inventory_transactslot(global. inventory_select,-1)
            
                plant_starttime = global. current_datetime
                plant_finishtime = scr_set_endtime(gdays,ghours,gminutes,gseconds)
                plant_timediff = plant_finishtime - plant_starttime
            }
        }*/
     //if(state = 3)//finished growing, right click to harvest 
     //   {
      //      scr_spawn_pickup(return_item,return_stack,x,y)
       //     state = 1
        //    scr_spawn_particle_generic(x,y,15)
    //    }   
    //}
    
    //if(obj_cursor.interact = 1 && state = 0)
    //{//xfer to tilled
    //    state = 1
    //}
    
    if(state = 2)
    {
        global. mouseover_string = string(global. item_array[plantid,1]) +": "+ string(global. item_array[plantid,2]) + ". Still Growing."
    }
    if(state = 3)
    {
        global. mouseover_string = string(global. item_array[plantid,1]) +": "+ string(global. item_array[plantid,2]) + ". Fully Grown"
        if(scr_inventory_checktype_slot(global. inventory_select) = type_shear || scr_inventory_checktype_slot(global. inventory_select) = type_pruner)
        {obj_cursor.state = 1}
    }
    if(state = 1)
    {
        global. mouseover_string = "Soil: Plant a seed to start gowth!"
        if(scr_inventory_checktype_slot(global. inventory_select) = type_seed ||scr_inventory_checktype_slot(global. inventory_select) = type_hoe )
        {obj_cursor.state = 1}
    }
    if(state = 0)
    {
        global. mouseover_string = "Soil: Use the Hoe to till it"
        if(scr_inventory_checktype_slot(global. inventory_select) = type_hoe )
        {obj_cursor.state = 1}
    }
}


//growing 
if(state = 2)
{
    //if watered, triggered watered
    if(abs(last_water - global. current_datetime) <= 3600)
    {
        watered = 1
    }
    plant_timediff = plant_finishtime - global. current_datetime
    
    total_growtime = plant_finishtime - plant_starttime
    
    //keep plant info up to date
    return_item = global. item_array[plantid,11]
    return_stack = global. item_array[plantid,12]
    growspr = global. item_array[plantid,13]
    
    
    //if growing, change the sprite based on how far along the plant is
    
    /*
    //trying a new way
    plant_timediff = total_growtime / sprite_get_number(growspr)
    grow_frame = floor(plant_timediff)
    
    //*/
    //replace me to allow for arbitrary size
    if(plant_timediff < total_growtime *.3) // 1/3 of the way
    {grow_frame = 2}
    if(plant_timediff >= total_growtime *.3 && plant_timediff < total_growtime *.6) // 1/3 to 1/6 of the way
    {grow_frame = 1}
    if(plant_timediff >= total_growtime *.6 && plant_timediff <= total_growtime ) // more than 1\6 but less than complete
    {grow_frame = 0}
    
    //*/
    if(global. current_datetime >= plant_finishtime)
    {
        global. save_game = 1//trigger save
        state = 3
        scr_spawn_pickup(plantid,1,x,y)
        
    }
}

//grown
if(state = 3)
{
    //keep plant info up to date
    return_item = global. item_array[plantid,11]
    return_stack = global. item_array[plantid,12]
    growspr = global. item_array[plantid,13]
}


