name = "Ricky"
portrait = spr_npc_rick_port
sprite = spr_npc_rick

request = scr_random_request()
request_num = irandom_range(1,4)
request_fulfilled = 0

reward = scr_random_reward()
reward_num = 5



speaking = 0
speech = ""//body_string + string(request_num) + " " + global. item_array[request,1] + "?"


if(file_exists("npc/" + name+".txt"))
{
    scr_io_import_npc("npc/"+name+".txt")
    scr_io_import_npcspeech("npc/"+ name + "_speech.txt")
    set_newrequest = 0
}
else{
    set_newrequest = 1
    speech_array[0] = "No one told me what to say!!!!"
    speech_array[1] = "No one told me what to do!!!!"
    scr_io_export_npc("npc/" + name+".txt")
}

speech_options = array_length_1d(speech_array) - 1
dir = irandom(360)