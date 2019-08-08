///scr_write_itemarray(num)

var eyed = argument0

global. item_array[eyed,1] = item_name // item id
global. item_array[eyed,2] = item_desc // item desc
global. item_array[eyed,3] = item_sprite //itemsprite // for inventory
global. item_array[eyed,4] = item_type //item type "seed" "restore happiness" ""
global. item_array[eyed,5] = item_gdays//grow_days
global. item_array[eyed,6] = item_ghours //grow_hours
global. item_array[eyed,7] = item_gminutes //grow_minutes
global. item_array[eyed,8] = item_gseconds //grow_seconds
global. item_array[eyed,9] = item_value//value, referenced when used by itemtype(ex, money when sold, regenerated)
global. item_array[eyed,10] = item_windparticle//wind particle
global. item_array[eyed,11] = item_reward //grow_reward, inventory item. Will be spawned as a pickup
global. item_array[eyed,12] = item_yield //yield number of reward returned
global. item_array[eyed,13] = item_growsprite //prite to be stepped through whileplant is growing. Drawn on top of soil 