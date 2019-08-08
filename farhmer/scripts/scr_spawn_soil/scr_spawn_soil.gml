///scr_spawn_soil(x,y)
var xx = argument0
var yy = argument1

inst = instance_create(xx,yy,obj_soil)
with(inst){move_snap(64,64)}