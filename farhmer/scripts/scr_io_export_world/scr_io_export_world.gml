///scr_io_export_world()
//this should be as light as possible, as we're gonna save like every few minutes
//or maybe every time a change is made?


///*
var file_sel = file_text_open_write(working_directory + "\savegame.txt")
var scanner = instance_number(obj_soil)

file_text_write_string(file_sel,scr_unix_timestamp(date_current_datetime()))
file_text_writeln(file_sel)
var xep = 1

//saving groundsquares
while(xep <= scanner)
{
    //pull object values
    inst = scr_instance_nearest_nth(x,y,obj_soil,xep)
    storex = inst.x
    storey = inst.y
    store_starttime = inst.plant_starttime 
    store_finishtime = inst.plant_finishtime
    store_plantid = inst.plantid
    store_plantstate = inst.state
    last_water = inst.last_water
    
    //write object values to file
    file_text_write_string(file_sel,storex)
    file_text_writeln(file_sel)

    file_text_write_string(file_sel,storey)
    file_text_writeln(file_sel)
    
    file_text_write_string(file_sel,string(store_starttime))
    file_text_writeln(file_sel)
    
    file_text_write_string(file_sel,string(store_finishtime))
    file_text_writeln(file_sel)
    
    file_text_write_real(file_sel,store_plantid)
    file_text_writeln(file_sel)
    
    file_text_write_real(file_sel,store_plantstate)
    file_text_writeln(file_sel)
    
    file_text_write_real(file_sel,last_water)
    file_text_writeln(file_sel)
    file_text_writeln(file_sel)
    
    xep += 1
}

file_text_close(file_sel)//*/

///*
file_sel = file_text_open_write(working_directory+"\pot.txt")
file_text_write_string(file_sel, global. current_datetime)
file_text_writeln(file_sel)

xep = 1
scanner = instance_number(obj_pot)

while(xep < scanner)
{
    inst = scr_instance_nearest_nth(x,y,obj_pot,xep)
    
    file_text_write_string(file_sel,inst.x)
    file_text_writeln(file_sel)
    
    file_text_write_string(file_sel,inst.y)
    file_text_writeln(file_sel)
    
    file_text_write_string(file_sel,inst.flower)
    file_text_writeln(file_sel)
    file_text_writeln(file_sel)
    
    xep += 1
}
file_text_close(file_sel) //*/

/////////////////////////////////////////////////////inventory fileio
///*
file_sel = file_text_open_write(working_directory + "\inv.txt")

file_text_write_real(file_sel,scr_unix_timestamp(date_current_datetime()))
file_text_writeln(file_sel)

scanner = global. inventory_max
xep = 0
while(xep < scanner)
{
    file_text_write_real(file_sel, global. inventory_array[xep,0])
    file_text_writeln(file_sel)
    file_text_write_real(file_sel, global. inventory_array[xep,1])
    file_text_writeln(file_sel)
    xep += 1    
    
}
file_text_close(file_sel)//*/

////////////////////////////////////////////////////////////// player fileio
file_sel = file_text_open_write(working_directory + "\player.txt")

file_text_write_string(file_sel, obj_player.player_spriteset)
file_text_writeln(file_sel)

file_text_write_string(file_sel, obj_player.name)
file_text_writeln(file_sel)
    
file_text_close(file_sel)//*/


//////////////////////////////////////////////////////////////////////river fileio
file_sel = file_text_open_write(working_directory + "\riverinfo.txt")

file_text_write_string(file_sel, global. river_lastdrop)
file_text_writeln(file_sel)
    
file_text_close(file_sel)//*/
