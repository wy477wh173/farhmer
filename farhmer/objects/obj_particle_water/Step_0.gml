
//moving and decelerating
if(spd > .5)
{
    motion_set(dir,spd)
    spd += -decel_spd
    //rotating sprite
    rot+= rot_change
}
else
{
    spr = 0;
    motion_set(dir,0);
    scale = .7
    alpha += -.04
    
    if(alpha <= 0)
    {instance_destroy()}
}

