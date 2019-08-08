///scr_spawn_pickup(id,stack,x,y)
var eyed = argument0
var stack = argument1
var spawnx = argument2
var spawny = argument3
var inst = noone

inst = instance_create_depth(spawnx,spawny,depth_pickup ,obj_pickup)//instance_create(spawnx,spawny,obj_pickup)
inst.eyed = eyed
inst.stack = stack