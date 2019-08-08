

//dropping seed
dropper += -1
if(dropper < 0 && num > 0)
{
    dropper = room_speed * irandom_range(5,30)
    scr_spawn_pickup(seed,1,x,y)
    num += -1
}
//update motion
motion_set(dir,spd)
//delete me if I'm outside room
if(x < 0 || x > room_width||y < 0 || y > room_height)
{
    instance_destroy()
}