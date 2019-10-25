name = "Rick McTest"
portrait = spr_player_rabbit
sprite = spr_player_rabbit

request = inv_flower_fireweed
request_num = 2
request_fulfilled = 0

reward = inv_seed_pumpkin
reward_num = 5


speaking = 0
speech = "Hey, I'm " + name + " and I'm just here to see how this NPC thing works. /n Can you get me " + string(request_num) + " " + global. item_array[request,1] + "?"

scr_io_import_npc(name+".txt")
set_newrequest = 0
dir = irandom(360)