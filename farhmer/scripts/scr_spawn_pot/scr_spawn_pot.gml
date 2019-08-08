///scr_spawn_soil(x,y,flower)
var xx = argument0
var yy = argument1
var flower = argument2

inst = instance_create(xx,yy,obj_pot)
with(inst){move_snap(32,32)}
inst.flower = flower