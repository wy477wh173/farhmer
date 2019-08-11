///scr_random_item()
var randitem_array[0]

randitem_array[0] = inv_seed_generic
randitem_array[1] = inv_seed_sunflower
randitem_array[2] = inv_seed_floppy
randitem_array[3] = inv_flower_sunflower

randitem_array[4] = inv_tool_hoe
randitem_array[5] = inv_tool_pruner
randitem_array[6] = inv_tool_shear

retr = randitem_array[irandom(6)]
return retr;