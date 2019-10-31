if(request_fulfilled = 0)
{
    bodystring = speech_array[irandom(speech_options)]
    speech = bodystring + string(request_num) + " " + global. item_array[request,1] + "?"
}
else
{
    speech = "Thanks buddy!! You made my day! Take this " +global. item_array[reward,1] +" (x" + string(reward_num) + ") for you troubles." 
}

scr_npc_calc()