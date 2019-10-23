name = "Rick McTest"
portrait = spr_player_rabbit
sprite = spr_player_rabbit

request = inv_flower_fireweed

request_num = 2
speaking = 0
request_fulfilled = 0

speech = "Hey, I'm " + name + " and I'm just here to see how this NPC thing works. /n Can you get me " + string(request_num) + " " + global. item_array[request,1] + "?"

dir = irandom(360)