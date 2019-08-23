global. current_datetime = scr_unix_timestamp(date_current_datetime())
scr_control_click()

////////make this better, only a temporary thing
if(player_spriteset = "crow")
{player_sprite = spr_player_crow}

if(player_spriteset = "rabbit")
{player_sprite = spr_player_rabbit}
///////make this better, only a temporary thing

//zeroing inventory
zero_waiter += 1
if(zero_waiter > 25)
{//scan for empty slots with information retained
    scr_inventory_scrubempty()
    //save game
    scr_io_export_world()
    zero_waiter = 0
}

//depth = -y