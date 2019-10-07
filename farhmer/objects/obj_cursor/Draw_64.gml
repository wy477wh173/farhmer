//for drawing cursor to usable hud
//ugh. . . i don't even know what to do for this. . . . 

obfusx = x - camera_get_view_x(view_camera[0]) //+ 32//32 for visual debug
obfusy = y - camera_get_view_y(view_camera[0])

draw_sprite_ext(cursor_spr,frame,obfusx,obfusy,cursor_size,cursor_size,rot,c_white,1)


