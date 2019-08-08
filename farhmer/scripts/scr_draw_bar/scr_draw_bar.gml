///scr_draw_bar(x,y, dir,length,fill value,total value, fill_alpha, back_alpha,fill_color, back_color,thickness,padding)

barx = argument0
bary = argument1
bardir = argument2
barlength = argument3

val_fill = argument4
val_total = argument5
alpha_fill = argument6
alpha_total = argument7
color_fill = argument8
color_total = argument9

thickness = argument10
padding = argument11



//drawing stuff

endx =  barx + lengthdir_x(barlength,bardir)
endy =  bary + lengthdir_y(barlength,bardir)

//backing bar
draw_set_alpha(alpha_total)
draw_line_width_color(barx,bary,endx, endy,thickness + padding,color_total,color_total)

// fill bar
fill_dist = (barlength / val_total) * val_fill

fillx = barx + lengthdir_x(fill_dist,bardir)
filly = bary + lengthdir_y(fill_dist,bardir)

draw_set_alpha(alpha_fill)
draw_line_width_color(barx,bary,fillx, filly,thickness,color_fill,color_fill)
draw_set_alpha(1)
