///scr_spawn_particle_water(x,y,num)
var xx = argument0
var yy = argument1
var numb = argument2


while(numb > 0)
{
    instance_create_depth(xx,yy,depth_particle,obj_particle_water)
    numb += -1
}
