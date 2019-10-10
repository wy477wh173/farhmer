///scr_console_listen(x,y)
consolex = argument0
consoley = argument1
if(global. console = 1)
    {
    draw_set_font(fnt_console)
    draw_set_valign(fa_center)
    space = string_width("pktchip\:" + keyboard_string + " ")
    draw_line_width_colour(consolex,consoley, consolex + space,consoley,32,c_black,c_black)
    
    if(keyboard_check_pressed(192))
        {
        obj_player.movable = 1
        global. console = 0
        io_clear()
        }
    
    if(keyboard_check_pressed(vk_backspace))
        {
        keyboard_string = string_copy(keyboard_string,0,string_length(keyboard_string))
        }
        
    if(keyboard_check_pressed(vk_enter))
        {
        lastcmd = keyboard_string
        scr_console_execute(keyboard_string)
        keyboard_string = ""
        }
        
    if(keyboard_check_pressed(vk_up))
        {
        keyboard_string = lastcmd
        }
    
    draw_text(consolex,consoley, "pktchip\:" + keyboard_string)
    }
    
