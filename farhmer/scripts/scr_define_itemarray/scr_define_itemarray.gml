#macro type_seed "Seed"
#macro type_flower "Flower"
#macro type_deployable "Deployable"
#macro type_none "None"
#macro type_hoe "Hoe"
#macro type_shear "Shear"
#macro type_pruner "Pruner"

//macros

#macro inv_none 0

#macro inv_seed_generic 1
#macro inv_seed_sunflower 2
#macro inv_seed_floppy 3

#macro inv_flower_sunflower 100
#macro inv_flower_generic  101
#macro inv_flower_floppy 102

#macro inv_tool_hoe 200
#macro inv_tool_shear 201
#macro inv_tool_pruner 202
//macros


item_name = "Empty" // item id
item_desc = "No item" // item desc
item_sprite = spr_inv_empty //itemsprite
item_type= type_none //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 0//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_none)

//---------------------------------------------------------seeds

item_name ="Generic Seed"  // item name
item_desc = "A Testing seed" // item desc
item_sprite = spr_inv_seed_generic //itemsprite
item_type=  type_seed //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 10//grow_seconds
item_value= 1//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_flower_generic//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 1//yield number of reward returned
item_growsprite = spr_grow_generic

scr_write_itemarray(inv_seed_generic)

item_name = "Sunflower Seed"// item name
item_desc = "A Sunflower seed" // item desc
item_sprite = spr_inv_seed_sunflower //itemsprite
item_type= type_seed//item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 45//grow_seconds
item_value= 2//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_flower_sunflower//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 2//yield number of reward returned
item_growsprite = spr_grow_sunflower

scr_write_itemarray(inv_seed_sunflower)

item_name = "Floppy Seed"// item name
item_desc = "It'll grow a beautiful Floppy Flower" // item desc
item_sprite = spr_inv_seed_floppy //itemsprite
item_type= type_seed//item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 20//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 2//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_flower_floppy//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 2//yield number of reward returned
item_growsprite = spr_grow_floppy

scr_write_itemarray(inv_seed_floppy)






//----------------------------------------flowers

item_name = "Generic Fower" // item name
item_desc = "A Generic flower used for testing" // item desc
item_sprite = spr_inv_flower_generic //itemsprite
item_type= type_flower //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 15//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_flower_generic)

item_name = "Sunflower Fower" // item name
item_desc = "A gorgeous Sunflower" // item desc
item_sprite = spr_inv_flower_sunflower //itemsprite
item_type= type_flower //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 35//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_flower_sunflower)

item_name = "Floppy Flower" // item name
item_desc = "A beautiful Floppy Flower" // item desc
item_sprite = spr_inv_flower_floppy //itemsprite
item_type= type_flower //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 55//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_flower_floppy)








//---------------------------------------------- tools
item_name = "Simple Hoe" // item name
item_desc = "A simple, basic hoe, " // item desc
item_sprite = spr_inv_tool_hoe //itemsprite
item_type= type_hoe //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 55//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_tool_hoe)

item_name = "Simple Shears" // item name
item_desc = "A humble pair of gardening shears" // item desc
item_sprite = spr_inv_tool_shear //itemsprite
item_type= type_shear //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 55//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_tool_shear)

item_name = "Simple Pruner" // item name
item_desc = "A humble pair of gardening pruners" // item desc
item_sprite = spr_inv_tool_pruner //itemsprite
item_type= type_pruner //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 55//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_tool_pruner)


