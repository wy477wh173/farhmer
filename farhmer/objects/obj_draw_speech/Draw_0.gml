//backing rectangle
height = string_height_ext(body_text,24,512) + 6
width = string_width_ext(body_text,24,512) + 6
c  = c_black
draw_set_halign(fa_left)
draw_set_alpha(fade_alpha)
draw_rectangle_color(x -6,y - 6,x + width, y + height,c,c,c,c,false)
draw_set_alpha(1)
//name
c= c_yellow
//draw name
draw_text_color(x,y - 32,name,c,c,c,c,fade_alpha)
//portrait
//draw_set_font(fnt_)
draw_set_valign(fa_top)
draw_sprite_ext(portrait,frame,x - 64,y - 24,1,1,0,c_white,fade_alpha)
//body of the text
c= c_white
draw_text_ext_color(x,y,body_print,24,512,c,c,c,c,fade_alpha)
