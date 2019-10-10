
bird_delay += -1
if(bird_delay < 0)
{
    bird = instance_create(irandom(room_width),irandom(room_height),obj_npc_bird)
    bird.seed = scr_random_item()//choose(inv_seed_generic,inv_seed_sunflower,inv_seed_floppy,inv_seed_fireweed)
    bird.num = irandom_range(5,8)
    
    bird_delay = (room_speed * 60) * irandom_range(1,4)
}

if(keyboard_check_pressed(ord("B")))
{
    bird_delay = 0
}