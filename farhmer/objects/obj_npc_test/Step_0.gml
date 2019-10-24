if(request_fulfilled= 0)
{
    speech = "Hey, I'm " + name + " and I'm just here to see how this NPC thing works. \n Can you get me " + string(request_num) + " " + global. item_array[request,1] + "?"
}
else
{
    speech = "Thanks buddy!! You made my day! Take this " +global. item_array[reward,1] +" (x" + string(reward_num) + ") for you troubles." 
}
if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_cursor,false,1))
{
    obj_player.movable = 0
    global. mouseover_string = name
    if(mouse_check_button_pressed(mb_left))
    {
        obj_cursor.state = 1
        speaking = 1
        scr_set_speech(name,portrait,speech,sfx_none)
        if(request_fulfilled = 1)
        {
            scr_inventory_transactitem(reward,reward_num)
        }
    }
    
    if(mouse_check_button_pressed(mb_right) && request_fulfilled = 0)
    {
        if(scr_inventory_checkitem(request,request_num))
        {
            scr_inventory_transactitem(request,-request_num)
            scr_spawn_particle_generic(x,y,5)
            request_fulfilled = 1
        }
    }
}


if(speaking = 1)
{
    dir = point_direction(x,y,obj_player.x, obj_player.y)
}
