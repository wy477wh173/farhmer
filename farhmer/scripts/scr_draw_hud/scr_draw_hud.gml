#event draw

drawx = 0
drawy = 0

unixtime = global. current_datetime
draw_text(drawx,drawy,unixtime)


















//drawing inventory
drawx = 32
drawy = window_get_height() - 64//view_get_hport(0) - 64
inv_ct = 0
spacing = 68

//draw selected slot thingy
selecty = drawy + 32
selectx = (global. inventory_select * spacing) + 32 + 32
c = c_blue
draw_circle_color(selectx,selecty,32,c,c,0)

draw_set_valign(fa_bottom)
selected_item = global. inventory_array[global. inventory_select,0]
draw_text_ext(drawx, drawy - 16, string(global. item_array[selected_item,1]) + ": " + string(global. item_array[selected_item,2]) ,32,512)

draw_set_valign(fa_top)
while(inv_ct < global. inventory_max)
{
    c = c_red
    drawx = (inv_ct * spacing) + 32
    
    sprite = global. item_array[global. inventory_array[inv_ct,0],3]//sprite for current slot as defined by item_array
    name = global. item_array[global. inventory_array[inv_ct,0],1]//name defined by item array
    stack = global. inventory_array[inv_ct,1]
    c = c_gray
    draw_set_alpha(.5)
    draw_rectangle_color(drawx - 2,drawy - 2,drawx + 66,drawy + 66,c,c,c,c,0)//draw backing box
    draw_set_alpha(1)
    c = c_red
    draw_rectangle_color(drawx - 2,drawy - 2,drawx + 66,drawy + 66,c,c,c,c,1)//draw borderbox
    draw_sprite_ext(sprite,0,drawx,drawy,2,2,0,c_white,1)//draw sprite
    draw_text(drawx,drawy, string(global. inventory_array[inv_ct,1]))// draw stack number
    
    cur = obj_cursor
    if(cur.obfusx > drawx && cur.obfusx < drawx + 64)
    {
        if(cur.obfusy > drawy && cur.obfusy < drawy + 64)
        {
            obj_player.movable = 0
            obj_cursor.state = 1
            if(mouse_check_button_released(mb_left))
            {
                if(cur.obfusy > drawy)
                {
                    global. inventory_select = inv_ct 
                }
                
                if(cur.obfusy < drawy)
                    {
                        global. inventory_select = inv_ct 
                        scr_inventory_dropslot(obj_cursor.x, obj_cursor.y,)
                    }
            }
            
            
        }
    }
    inv_ct += 1
    
    if(global. dev_mode = 1)
    {
        //draw_text(drawx,drawy - 32, string(global. inventory_array[inv_ct,4]))// draw stack number
    }
}
