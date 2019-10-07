global. current_datetime = scr_unix_timestamp(date_current_datetime())
scr_control_click()

////////make this better, only a temporary thing
if(player_spriteset = "crow")
{player_sprite = spr_player_crow}

if(player_spriteset = "rabbit")
{player_sprite = spr_player_rabbit}
///////make this better, only a temporary thing

//scrub inventory
inv_scrubtime += 1
if(inv_scrubtime > 15)
{
    inv_scrubtime = 0
    scr_inventory_scrubempty()
}

//zeroing inventory
zero_waiter += 1
if(zero_waiter > save_frequency || global. save_game = 1)
{//scan for empty slots with information retained
    //save game
    global. save_game = 0
    scr_io_export_world()
    zero_waiter = 0
}

//depth = -y