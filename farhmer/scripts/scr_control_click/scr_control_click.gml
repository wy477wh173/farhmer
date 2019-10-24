if(mouse_check_button(mb_right) && movable = 1)
{
    movement_targetx = obj_cursor.x
    movement_targety = obj_cursor.y
    movement_targetdir = point_direction(x,y, movement_targetx,movement_targety)
}

if(mouse_check_button_pressed(mb_left))
{
    //obj_cursor.interact = 1
    if(movable = 1)
    {scr_inventory_useslot(global. inventory_select)}
    if(movable = 0)
    {obj_cursor.use = 1}
}
movable = 1
if(keyboard_check_pressed(ord("P")))
{
    randing = global. current_datetime
    screen_save(working_directory + "screenshot"+string(randing)+".png")
}

if(mouse_check_button(mb_middle))
{
    //if held count up, dropping more slowly as you keep holding
    if(mmb_counter >= mmb_counter_inst)
    {
        mmb_counter = 0
    }
    
    if(mmb_counter = 0 )//&& scr_inventory_checkslot(global. inventory_select) > 0)
    {//if pressed drop one
        //obj_cursor.use = 1
        scr_inventory_dropslot(obj_cursor.x, obj_cursor.y,global. inventory_select)
        scr_inventory_scrubempty()
        if(mmb_counter_inst > 5)
            {mmb_counter_inst = mmb_counter_inst * .8}
    }
    mmb_counter += 1
}

if(mouse_check_button_released(mb_middle))
{
    mmb_counter_inst = mmb_counter_max
    mmb_counter = 0
}

if(keyboard_check_pressed(192))
{
    global. console = 1
    io_clear()
}

//checking dist to endpoint
if(point_distance(x,y,movement_targetx,movement_targety) > movement_speed)
{
    checkx = x + lengthdir_x(movement_speed * 2,movement_targetdir)
    checky = y + lengthdir_y(movement_speed * 2,movement_targetdir)
    
    //if newposition = free, move there
    if(place_free(checkx, checky))
    {
        motion_set(movement_targetdir,movement_speed)
    }
    else{motion_set(movement_targetdir,0)}
}else{motion_set(movement_targetdir,0)}

//freely rotate whenever
if(movement_targetdir != player_dir)
{
    player_dir = movement_targetdir
    /*
    if(movement_targetdir > player_dir)
    {player_dir += ((movement_targetdir - player_dir) * .2)}
    
    if(movement_targetdir < player_dir)
    {player_dir += ((movement_targetdir - player_dir) * .2)}//*/
}


//scrolling throught mouse wheel
if(mouse_wheel_up() && global. inventory_select < global. inventory_max - 1)
{
    global. inventory_select += 1
}
if(mouse_wheel_down() && global. inventory_select > 0)
{
    global. inventory_select += -1
}

//keyboard_selection
if(keyboard_check_pressed(ord("1"))){select = 0; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("2"))){select = 1; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("3"))){select = 2; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("4"))){select = 3; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("5"))){select = 4; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("6"))){select = 5; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("7"))){select = 6; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("8"))){select = 7; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("9"))){select = 8; if(global. inventory_max >= select){global. inventory_select = select}}
if(keyboard_check_pressed(ord("0"))){select = 9; if(global. inventory_max >= select){global. inventory_select = select}}




//dev toggle
if(keyboard_check_pressed(vk_space))
{
    if(global. dev_mode = 1)
    {
        global. dev_mode = 0
    }
    else{global. dev_mode = 1}
}

//dev controls
if(global. dev_mode = 1)
{
    if(keyboard_check_pressed(ord("S")))
    {//save world(test)
        scr_io_export_world()
    }
    
    if(keyboard_check_pressed(ord("L")))
    {//load world(test)
        scr_io_import_world()
    }
    
    if(keyboard_check_pressed(ord("X")))
    {
        scr_spawn_soil(obj_cursor.x,obj_cursor.y)
    }
    if(keyboard_check_pressed(ord("1")))
    {
        scr_spawn_pickup(choose(inv_seed_fireweed,inv_seed_floppy,inv_seed_ghost,inv_seed_pumpkin),1,obj_cursor.x,obj_cursor.y)
    }
    
    if(keyboard_check_pressed(ord("2")))
    {
        scr_spawn_pickup(choose(inv_flower_fireweed,inv_flower_floppy,inv_flower_ghost,inv_flower_pumpkin),1,obj_cursor.x,obj_cursor.y)
    }
    
    if(keyboard_check_pressed(ord("H")))
    {
        scr_spawn_pickup(inv_tool_hoe,1,obj_cursor.x,obj_cursor.y)
        scr_spawn_pickup(inv_tool_shear,1,obj_cursor.x + 32,obj_cursor.y)
        scr_spawn_pickup(inv_tool_pruner,1,obj_cursor.x + 64,obj_cursor.y)
        scr_spawn_pickup(inv_tool_wateringcan,1,obj_cursor.x + 96, obj_cursor.y)
    }
    
    if(keyboard_check_pressed(ord("C")))
    {
        if(player_spriteset = "crow")
        {player_spriteset = "rabbit"}
        else{player_spriteset = "crow"}
    }
}

if(keyboard_check_pressed(vk_escape))
{
    scr_io_export_world()
    game_end()
}
