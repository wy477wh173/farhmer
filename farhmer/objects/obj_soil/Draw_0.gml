
draw_sprite(soil_sprite,state,x,y)

if(watered = 1)
{
    c = c_dkgray
    draw_set_alpha(.5)
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,0)
    draw_set_alpha(1)
}

if(state = 2)
{
    draw_sprite(growspr,grow_frame,x,y)
}

if(state = 3)
{
    draw_sprite(growspr,0,x,y)
}



if(global. dev_mode = 1)
{c = c_red
    if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_cursor,false,true))
    {
        draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,1)
        draw_text(x,y,"Finishtime: " + string(plant_finishtime))
        draw_text(x,y + 16,"Time Left: " + string(plant_timediff))
        draw_text(x,y + 32, "X: " + string(x) + "   Y: " +string(y))
        
        draw_text(x,y + 48,"Chunk: " + string(chunk))
        draw_text(x,y + 64,"Count: " + string(count))
        draw_text(x,y + 72,"GrowFr: " + string(grow_frame))
        
    }
}