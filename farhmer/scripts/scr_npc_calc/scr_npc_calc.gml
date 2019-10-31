///scr_npc_calc()
//universal calcs for NPC's

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
        {// give player reward
            scr_inventory_additem(reward,reward_num)
            set_newrequest = 1
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


if(set_newrequest = 1)
{
    set_newrequest = 0
    request = scr_random_request()
    request_num = irandom_range(2,5)
    
    reward = scr_random_reward()
    reward_num = irandom_range(3,6)
    request_fulfilled = 0
    
    scr_io_export_npc("npc/"+name+".txt")
}