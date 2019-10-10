///scr_draw_storagebox

var columns = 10 // number of vertical rows
var item_count = 0//current row
var item_max = array_length_1d(global. inventory_box_array) //size of array
var row = 0 //current drawing row
var adjusted_spot = 0// point in this specific row

//var startx = 64
//var starty = 64

var drawx = startx
var drawy = starty
var spacer = 74
global. box_max = 79

while(item_count < global. box_max)
{
    while(adjusted_spot < columns)
    {
        drawx = startx + (adjusted_spot * spacer)
        drawy = starty + (row * spacer)
        //draw item box
        sprite = global. item_array[global. inventory_box_array[item_count,0],3]//sprite for current slot as defined by item_array
        name = global. item_array[global. inventory_box_array[item_count,0],1]//name defined by item array
        stack = global. inventory_box_array[item_count,1]
        c = c_gray
        draw_set_alpha(.8)
        draw_rectangle_color(drawx - 2,drawy - 2,drawx + 66,drawy + 66,c,c,c,c,0)//draw backing box
        draw_set_alpha(1)
        c = c_red
        draw_rectangle_color(drawx - 2,drawy - 2,drawx + 66,drawy + 66,c,c,c,c,1)//draw borderbox
        draw_sprite_ext(sprite,0,drawx,drawy,2,2,0,c_white,1)//draw sprite
        draw_text(drawx,drawy, string(global. inventory_box_array[item_count,1]))// draw stack number
        
        
        
        cur = obj_cursor
        if(cur.obfusx > drawx && cur.obfusx < drawx + spacer)
        {
            if(cur.obfusy > drawy && cur.obfusy < drawy + spacer)
            {
                obj_player.movable = 0
                obj_cursor.state = 1
                
                if(mouse_check_button_released(mb_left))
                {//infooooo draw
                    box_select = item_count//this will be the info to draw on the right-hand side though it's not in yet
                }
                
                if(mouse_check_button_pressed(mb_right))
                {//xfer to inventory
                    scr_inventory_additem(global. inventory_box_array[item_count,0],global. inventory_box_array[item_count,1])
                    global. inventory_box_array[item_count,0] = 0
                    global. inventory_box_array[item_count,1] = 0
                    
                }
            }
        }
        
        adjusted_spot += 1
        item_count += 1
    }
    endrow = drawx + 128
    row += 1
    adjusted_spot = 0
}


if(obj_cursor.obfusx > endrow && cursor_spaced = 1)
{// if mouse is off the right end of the menu, close ment
    activated = 0
}

if(obj_cursor.obfusx < endrow)
{//checks if player has crossed over into the box-structure. if player opens a box on right-half of screen this should keep it from auto-closing. May need to be refactored for touch
    cursor_spaced = 1
}