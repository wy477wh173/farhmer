
draw_sprite_ext(sprite,0,x,y,scale,scale,rot,c_white,alpha )

if(global. dev_mode = 1)
{//dev stuff
    endx = x + lengthdir_x(spd*5,dir)
    endy = y + lengthdir_y(spd*5,dir)
    
    c = c_red
    draw_line_color(x,y,endx,endy,c,c)
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_top,c,c,c,c,1)
}