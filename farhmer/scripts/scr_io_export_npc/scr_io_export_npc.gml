///scr_io_export_npc(filename)
var filet = file_text_open_write(argument0)

//last visit
file_text_write_real(filet, global. current_datetime)
file_text_writeln(filet)

//name
file_text_write_string(filet,name)
file_text_writeln(filet)

//request
file_text_write_string(filet,request)
file_text_writeln(filet)

//request num
file_text_write_string(filet,request_num)
file_text_writeln(filet)

//reward
file_text_write_string(filet,reward)
file_text_writeln(filet)

//reward num
file_text_write_string(filet,reward_num)
file_text_writeln(filet)

file_text_close(filet)