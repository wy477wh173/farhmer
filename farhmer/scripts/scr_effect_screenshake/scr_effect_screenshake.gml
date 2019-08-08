///scr_effect_screenshake(dist, dir)
shake_dist = argument0
shake_dir = argument1
if(global. option_screenshake = 1)
{
    shake_x = lengthdir_x(shake_dist * -1,shake_dir)
    shake_y = lengthdir_y(shake_dist * -1,shake_dir)
    obj_camera.x += shake_x
    obj_camera.y += shake_y
}