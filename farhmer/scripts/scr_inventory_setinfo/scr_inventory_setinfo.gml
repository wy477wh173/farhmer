///scr_inventory_setinfo(id)
//set a slot's info to match a particular item
var item_id = argument0
var type = global. inventory_array[imp,0]

if(type = inv_none)
{
   //global. inventory_array[]
}
//--------------------------------------------------------------seeds
if(type = inv_seed_generic)
{
    //global. inventory_array[imp,0] = inv_none // item id
    global. inventory_array[imp,1] ="A generic Testing seed" // item desc
    //global. inventory_array[imp,2] = 0 // stack
    global. inventory_array[imp,3] = spr_inv_seed_generic //itemsprite
    global. inventory_array[imp,4] = type_seed //item type "seed" "restore happiness" ""
    global. inventory_array[imp,5] = 0//grow_days
    global. inventory_array[imp,6] = 0//grow_hours
    global. inventory_array[imp,7] = 0//grow_minutes
    global. inventory_array[imp,8] = 10//grow_seconds
    global. inventory_array[imp,9] = 0//value, referenced when used by itemtype(ex, money when sold, regenerated)
    global. inventory_array[imp,10] = noone//wind particle
    global. inventory_array[imp,11] = inv_flower_generic//grow_reward, inventory item. Will be spawned as a pickup
    global. inventroy_array[imp,12] = 1//yield number of reward returned
}

if(type = inv_seed_sunflower)
{
    //global. inventory_array[imp,0] = inv_none // item id
    global. inventory_array[imp,1] ="A delightful sunflower seed" // item desc
    //global. inventory_array[imp,2] = 0 // stack
    global. inventory_array[imp,3] = spr_inv_seed_sunflower //itemsprite
    global. inventory_array[imp,4] = type_seed //item type "seed" "restore happiness" ""
    global. inventory_array[imp,5] = 0//grow_days
    global. inventory_array[imp,6] = 0//grow_hours
    global. inventory_array[imp,7] = 40//grow_minutes
    global. inventory_array[imp,8] = 0//grow_seconds
    global. inventory_array[imp,9] = 0//value, referenced when used by itemtype(ex, money when sold, regenerated)
    global. inventory_array[imp,10] = noone//wind particle
    global. inventory_array[imp,11] = inv_flower_sunflower//grow_reward, inventory item. Will be spawned as a pickup
    global. inventroy_array[imp,12] = 5//yield number of reward returned
}




//-------------------------------------------------------------------flowers
if(type = inv_flower_sunflower)
{
    //global. inventory_array[imp,0] = inv_none // item id
    global. inventory_array[imp,1] ="A delightful Sunflower" // item desc
    //global. inventory_array[imp,2] = 0 // stack
    global. inventory_array[imp,3] = spr_inv_flower_sunflower //itemsprite
    global. inventory_array[imp,4] = "restore happiness" //item type "seed" "restore happiness" ""
    global. inventory_array[imp,5] = 0//grow_days
    global. inventory_array[imp,6] = 0//grow_hours
    global. inventory_array[imp,7] = 0//grow_minutes
    global. inventory_array[imp,8] = 0//grow_seconds
    global. inventory_array[imp,9] = 5//value, referenced when used by itemtype(ex, money when sold, regenerated)
    global. inventory_array[imp,10] = noone//wind particle
    global. inventory_array[imp,11] = inv_none//grow_reward, inventory item. Will be spawned as a pickup
    global. inventroy_array[imp,12] = 0//yield number of reward returned
}

if(type = inv_flower_generic)
{
    //global. inventory_array[imp,0] = inv_none // item id
    global. inventory_array[imp,1] ="A delightful Testflower" // item desc
    //global. inventory_array[imp,2] = 0 // stack
    global. inventory_array[imp,3] = spr_inv_flower_generic //itemsprite
    global. inventory_array[imp,4] = "restore happiness" //item type "seed" "restore happiness" ""
    global. inventory_array[imp,5] = 0//grow_days
    global. inventory_array[imp,6] = 0//grow_hours
    global. inventory_array[imp,7] = 0//grow_minutes
    global. inventory_array[imp,8] = 0//grow_seconds
    global. inventory_array[imp,9] = 1//value, referenced when used by itemtype(ex, money when sold, regenerated)
    global. inventory_array[imp,10] = noone//wind particle
    global. inventory_array[imp,11] = inv_none//grow_reward, inventory item. Will be spawned as a pickup
    global. inventroy_array[imp,12] = 0//yield number of reward returned
}
