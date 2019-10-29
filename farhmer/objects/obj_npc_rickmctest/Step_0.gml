if(request_fulfilled= 0)
{
    speech = "Hey, I'm " + name + " and I'm just here to see how this NPC thing works. \n Can you get me " + string(request_num) + " " + global. item_array[request,1] + "?"
}
else
{
    speech = "Thanks buddy!! You made my day! Take this " +global. item_array[reward,1] +" (x" + string(reward_num) + ") for you troubles." 
}

scr_npc_calc()