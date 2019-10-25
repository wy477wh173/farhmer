///scr_io_import_npc(filename)
var filet = file_text_open_read(argument0)

//last visit
lastvisit = file_text_read_real(filet)
file_text_readln(filet)

//name
name = file_text_read_string(filet)
file_text_readln(filet)

//request
request = file_text_read_real(filet)
file_text_readln(filet)

//request num
request_num = file_text_read_real(filet)
file_text_readln(filet)

//reward
reward = file_text_read_real(filet)
file_text_readln(filet)

//reward num
reward_num = file_text_read_real(filet)
file_text_readln(filet)

file_text_close(filet)