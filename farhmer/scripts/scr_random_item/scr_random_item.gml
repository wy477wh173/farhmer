///scr_random_item()
var arraysize = 0

randitem_array[arraysize] = inv_seed_pumpkin
arraysize += 1
randitem_array[arraysize] = inv_seed_sunflower
arraysize += 1
randitem_array[arraysize] = inv_seed_floppy
arraysize += 1
randitem_array[arraysize] = inv_seed_fireweed
arraysize += 1
randitem_array[arraysize] = inv_seed_pumpkin
arraysize += 1
randitem_array[arraysize] = inv_seed_ghost
arraysize += 1

//randitem_array[4] = inv_tool_hoe
//randitem_array[5] = inv_tool_pruner
//randitem_array[6] = inv_tool_shear
//randitem_array[7] = inv_tool_wateringcan

retr = randitem_array[irandom(arraysize - 1)]
return retr;