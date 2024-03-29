var file_sel = file_text_open_read("savegame.txt")
var scanner = 0

global. last_checkin = file_text_read_real(file_sel)
file_text_readln(file_sel)

var xep = 0
while(!file_text_eof(file_sel))
{
    //pull object values
    inst = instance_create(128* xep,128* xep,obj_soil)
    
    //write object values to file
    inst.x = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    inst.y = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    inst.plant_starttime = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    inst.plant_finishtime = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    inst.plantid = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    inst.state = file_text_read_real(file_sel) 
    file_text_readln(file_sel)
    
    inst.last_water = file_text_read_real(file_sel) 
    file_text_readln(file_sel)
    file_text_readln(file_sel)
    
    
    xep += 1
}

file_text_close(file_sel)


//vases
file_sel = file_text_open_read("pot.txt")

file_text_readln(file_sel)//skip the date encoding
xep = 0
while(!file_text_eof(file_sel))
{
    pinst = instance_create(0,0,obj_pot)
    
    pinst.x = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    pinst.y = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    pinst.flower = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    file_text_readln(file_sel)
    xep += 1
}
file_text_close(file_sel)

//import inventory text
file_sel = file_text_open_read("inv.txt")
file_text_readln(file_sel)//skip the line that has the datetime on it 

xep = 0
while(!file_text_eof(file_sel))
{
    global. inventory_array[xep, 0] = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    global. inventory_array[xep, 1] = file_text_read_real(file_sel)
    file_text_readln(file_sel)
    xep += 1
}
file_text_close(file_sel)

//storage box
file_sel = file_text_open_read(working_directory +"storagebox.txt")
file_text_readln(file_sel)
lurp = 0
while(lurp < 80)
{
    global. inventory_box_array[lurp, 0] = 0
    global. inventory_box_array[lurp, 1] = 0
    lurp += 1
}

xep = 0
while(!file_text_eof(file_sel))
{
    global. inventory_box_array[xep, 0] = file_text_read_real(file_sel)//0//choose(inv_seed_floppy,inv_flower_generic,inv_tool_pruner)//file_text_read_real(file_sel)
    file_text_readln(file_sel)
    
    global. inventory_box_array[xep, 1] = file_text_read_real(file_sel)//0//file_text_read_real(file_sel)
    file_text_readln(file_sel)
    xep += 1
}
file_text_close(file_sel)


////////////////////////////////////////////////////////////////////////////////////////////player info
file_sel = file_text_open_read("player.txt")
//player spriteset
obj_player.player_spriteset = file_text_read_string(file_sel)
file_text_readln(file_sel)
//player name
obj_player.player_name = file_text_read_string(file_sel)
file_text_readln(file_sel)

global. river_lastdrop = file_text_read_real(file_sel)
file_text_readln(file_sel)

obj_player.x = file_text_read_real(file_sel)
file_text_readln(file_sel)

obj_player.y = file_text_read_real(file_sel)
file_text_readln(file_sel)

file_text_close(file_sel)
