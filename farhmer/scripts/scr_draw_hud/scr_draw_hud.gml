#event draw

drawx = 0
drawy = 0

draw_set_font(fnt_hud)
unixtime = global. current_datetime
draw_text(drawx,drawy,unixtime)

drawy += 32
draw_text(drawx,drawy, obj_player.name)

//drawing inventory
drawx = 32
drawy = view_get_hport(0) - 64//view_get_hport(0) - 64
inv_ct = 0
spacing = 68

//draw selected slot thingy
selecty = drawy + 32
selectx = (global. inventory_select * spacing) + 32 + 32
c = c_blue
draw_circle_color(selectx,selecty,32,c,c,0)

cur = obj_cursor

draw_set_valign(fa_bottom)
selected_item = global. inventory_array[global. inventory_select,0]
c = c_black
draw_text_ext_color(drawx, drawy - 16, string(global. item_array[selected_item,1]) + ": " + string(global. item_array[selected_item,2]) ,32,512,c,c,c,c,1)
c = c_white
draw_text_ext_color(drawx + 1, drawy - 15, string(global. item_array[selected_item,1]) + ": " + string(global. item_array[selected_item,2]) ,32,512,c,c,c,c,1)

//don't do commmands if mouse is in clickable area
//if(cur.obfusy > drawy && cur.obfusx <= (global. inventory_max * spacing))
//{
//    movable = 0
//}

//don't do commmands if mouse is in clickable area

scr_console_listen(128,128)
draw_set_font(fnt_hud)

draw_set_valign(fa_top)
while(inv_ct < global. inventory_max)
{
    c = c_red
    drawx = (inv_ct * spacing) + 32
    
    sprite = global. item_array[global. inventory_array[inv_ct,0],3]//sprite for current slot as defined by item_array
    name = global. item_array[global. inventory_array[inv_ct,0],1]//name defined by item array
    stack = global. inventory_array[inv_ct,1]
    c = c_gray
    draw_set_alpha(.8)
    draw_rectangle_color(drawx - 2,drawy - 2,drawx + 66,drawy + 66,c,c,c,c,0)//draw backing box
    draw_set_alpha(1)
    c = c_red
    draw_rectangle_color(drawx - 2,drawy - 2,drawx + 66,drawy + 66,c,c,c,c,1)//draw borderbox
    draw_sprite_ext(sprite,0,drawx,drawy,2,2,0,c_white,1)//draw sprite
    draw_text(drawx,drawy, string(global. inventory_array[inv_ct,1]))// draw stack number

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
            }
            
            if(mouse_check_button_pressed(mb_right))
            {
                if(instance_exists(obj_envir_storagebox))
                {
                    boxx = instance_nearest(obj_player.x,obj_player.y,obj_envir_storagebox)
                    if(boxx.activated = 1)
                    {
                        scr_inventory_storeitem(global. inventory_array[inv_ct,0],global. inventory_array[inv_ct,1])
                        global. inventory_array[inv_ct,0]= 0
                        global. inventory_array[inv_ct,1]= 0
                    }
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
