global. dev_mode = 0
global. current_datetime = scr_unix_timestamp(date_current_datetime())
global. river_lastdrop =  global. current_datetime // still not importing the fucking river file

#macro depth_floor 20
#macro depth_actor 0
#macro depth_wall  1
#macro depth_pickup 2
#macro depth_particle -1
#macro depth_hud -20

global. mouseover_string = ""

scr_inventory_initialize()


if(file_exists(working_directory + "\savegame.txt") && file_exists(working_directory + "\inv.txt") && file_exists(working_directory + "\player.txt"))
{
    scr_io_import_world()
}
