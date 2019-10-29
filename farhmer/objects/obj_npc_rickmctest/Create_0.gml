name = "Rick McTest"
portrait = spr_player_rabbit
sprite = spr_player_rabbit

request = scr_random_request()
request_num = irandom_range(1,4)
request_fulfilled = 0

reward = scr_random_reward()
reward_num = 5


speaking = 0
speech = "Hey, I'm " + name + " and I'm just here to see how this NPC thing works. /n Can you get me " + string(request_num) + " " + global. item_array[request,1] + "?"

if(file_exists(name+".txt"))
{
    scr_io_import_npc(name+".txt")
    set_newrequest = 0
}
else{
    set_newrequest = 1
    //scr_generate_npc()
}
dir = irandom(360)