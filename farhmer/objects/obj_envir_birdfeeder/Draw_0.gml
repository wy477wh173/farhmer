
draw_sprite(sprite_index,0,x,y)

if(global. dev_mode = 1)
{
    c = c_red
    draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,1)
    draw_text(x,y + 128,"Seeds: " + string(seeds))
    draw_text(x,y + 164, "Bird_delay: " + string(seeding_delay))
}