
draw_line_width_color(river_startx,river_starty,river_endx, river_endy,300,c_yellow,c_yellow)
draw_line_width_color(river_startx,river_starty,river_endx, river_endy,200,c_blue,c_blue)

if(global. dev_mode = 1)
{
    draw_text(x + 128, y + 128,"Last riverspawn: " + string(last_login))
    draw_text(x + 128, y + 164,"current time " + string(current_login))
    draw_text(x + 128, y + 192,"Difference: " + string(timespan) + "/" + string(timespan/3600) +"("+string(number)+") left to spawn")
}