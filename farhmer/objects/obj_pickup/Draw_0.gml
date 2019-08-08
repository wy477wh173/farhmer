draw_sprite_ext(spr,0,x,y,1,1,0,c_white,1)

if(draw_info = 1)
{
    global. mouseover_string = name +"#stack of "+string(stack) +"# which is a "+type +" "+desc
}


if(global. dev_mode = 1)
{c = c_red
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,1)
}