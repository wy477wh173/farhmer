draw_sprite_ext(cursor_spr,frame,x,y,cursor_size,cursor_size,rot,c_white,1)
//lil infostring that's drawn on the cursor
draw_text_ext(x + 32,y,global. mouseover_string,24,250)
global. mouseover_string = ""

if(global. dev_mode = 1)
{c = c_red
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c,c,c,c,1)
}