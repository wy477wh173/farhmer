
if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_pickup,false,true))
{
    pickup = instance_nearest(x,y,obj_pickup)
    seeds += pickup.stack
    instance_destroy(pickup)
    scr_spawn_particle_generic(x,y, 5)
}

mask_index = spr_envir_birdfeeder

if(seeds > 0)
{
    seeding_delay += -1
    //only count seeding delay if there are seeds
    if(seeding_delay < 0)
    {
        seeding_delay = 90
        obj_bird_controller.bird_delay = 0
        seeds += -1
    }
}