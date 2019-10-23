
lifespan_max = string_length(body_text) * 4

body_print = string_copy(body_text,0,scan_int)
scan_waiter += -1

if(scan_waiter < 0)
{
    scan_int += 1
    scan_waiter = scan_waiter_index
    //also play sound here
}


lifespan += 1

if(lifespan >= lifespan_max)
{
    fade_alpha += -.01
    
    if(fade_alpha < 0)
    {
        instance_destroy()
    }
}