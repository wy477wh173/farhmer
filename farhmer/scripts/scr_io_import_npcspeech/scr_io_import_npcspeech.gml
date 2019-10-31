///scr_io_import_npcspeech(file)
///creates an array of speech options for each NPC

var file = file_text_open_read(argument0)

var gerp = 0
while(!file_text_eof(file))
{
    speech_array[gerp] = file_text_read_string(file)
    file_text_readln(file)
    gerp += 1
}
file_text_close(file)