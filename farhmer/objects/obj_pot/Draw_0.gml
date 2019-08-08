
draw_sprite(flower_sprite,0,flowerx,flowery)
draw_sprite(spr_envir_pot,0,x,y)

if(global. dev_mode = 1)
{
    c = c_red
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,1)
}