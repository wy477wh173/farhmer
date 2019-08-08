///scr_draw_console(x,y)

if(global. console_active = 1)
{
xx = argument0
yy = argument1
box_height = string_height("exec>") * 2
box_width = 300

//box
draw_set_alpha(.7)
c = c_black
draw_rectangle_color(xx - 6,yy - 6, xx + box_width,yy + box_height,c,c,c,c,0)
draw_set_alpha(1)
draw_set_font(fnt_hud_general)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
//title
draw_text_ext(xx, yy,"Console--",32,500)
//string
yy += 16
draw_text(xx,yy,"exec>" + keyboard_string)

//execute
if(keyboard_check_pressed(vk_enter))
{
    scr_console_execute(keyboard_string)
    lastcmd = keyboard_string
    keyboard_string = ""
}

//command recall
if(keyboard_check_pressed(vk_up))
{
    keyboard_string = lastcmd
}

//backspace
if(keyboard_check_pressed(vk_backspace))
{
    keyboard_string = string_copy(keyboard_string,0,string_length(keyboard_string))
}


}