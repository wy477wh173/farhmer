
draw_sprite(soil_sprite,state,x,y)

if(state = 2)
{
    draw_sprite(growspr,grow_frame,x,y)
}

if(state = 3)
{
    draw_sprite(growspr,3,x,y)
}

if(global. dev_mode = 1)
{c = c_red
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,1)
    draw_text(x,y,"Finishtime: " + string(plant_finishtime))
    draw_text(x,y + 16,"Time Left: " + string(plant_timediff))
    draw_text(x,y + 32, "X: " + string(x) + "   Y: " +string(y))
}