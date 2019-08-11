
draw_sprite_ext(player_sprite,frame,x,y,2,2,player_dir,c_white,1)

if(global. dev_mode = 1)
{c = c_red
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,1)
    draw_text(x,y + 64,"Saveing: " + string(zero_waiter))
}