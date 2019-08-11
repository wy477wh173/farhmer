global. current_datetime = scr_unix_timestamp(date_current_datetime())
scr_control_click()

//zeroing inventory
zero_waiter += 1
if(zero_waiter > 10)
{//scan for empty slots with information retained
    scr_inventory_scrubempty()
    //save game
    scr_io_export_world()
    zero_waiter = 0
}

//depth = -y