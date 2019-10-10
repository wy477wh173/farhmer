///scr_define_itemarray()
///this defines item ids as well as item definiteions
///very important and heavy-lifting script
#macro type_seed "Seed"
#macro type_flower "Flower"
#macro type_deployable "Deployable"
#macro type_none "None"
#macro type_hoe "Hoe"
#macro type_shear "Shear"
#macro type_pruner "Pruner"
#macro type_wateringcan "Watering Can"

//macros

#macro inv_none 0

#macro inv_seed_generic 1
#macro inv_seed_sunflower 2
#macro inv_seed_floppy 3
#macro inv_seed_fireweed 4
#macro inv_seed_pumpkin 5
#macro inv_seed_ghost 6

#macro inv_flower_sunflower 100
#macro inv_flower_generic  101
#macro inv_flower_floppy 102
#macro inv_flower_fireweed 103
#macro inv_flower_pumpkin 104
#macro inv_flower_ghost 105

#macro inv_tool_hoe 200
#macro inv_tool_shear 201
#macro inv_tool_pruner 202
#macro inv_tool_wateringcan 203
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
item_ghours = 8//grow_hours
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
item_ghours = 2//grow_hours
item_gminutes = 20//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 2//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_flower_floppy//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 2//yield number of reward returned
item_growsprite = spr_grow_floppy

scr_write_itemarray(inv_seed_floppy)

item_name = "Fireweed Seed"// item name
item_desc = "The first thing to bloom after a fire" // item desc
item_sprite = spr_inv_seed_fireweed //itemsprite
item_type= type_seed//item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 1//grow_hours
item_gminutes = 420//grow_minutes
item_gseconds = 69//grow_seconds
item_value= 2//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_flower_fireweed//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 2//yield number of reward returned
item_growsprite = spr_grow_fireweed

scr_write_itemarray(inv_seed_fireweed)

item_name = "Pumpkin Seed"// item name
item_desc = "A tasty seed for roasting, or planting for spooky plants" // item desc
item_sprite = spr_inv_seed_pumpkin //itemsprite
item_type= type_seed//item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 10//grow_hours
item_gminutes = 31//grow_minutes
item_gseconds = 19//grow_seconds
item_value= 2//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_flower_pumpkin//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 1//yield number of reward returned
item_growsprite = spr_grow_pumpkin

scr_write_itemarray(inv_seed_pumpkin)

item_name = "Ghost Seed"// item name
item_desc = "Strange little seed that looks strangely like a skull" // item desc
item_sprite = spr_inv_seed_ghost //itemsprite
item_type= type_seed//item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 12//grow_hours
item_gminutes = 45//grow_minutes
item_gseconds = 19//grow_seconds
item_value = 2//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_flower_ghost//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 1//yield number of reward returned
item_growsprite = spr_grow_ghost

scr_write_itemarray(inv_seed_ghost)






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

item_name = "Fireweed" // item name
item_desc = "A sweet-smelling flower that makes delicious jam" // item desc
item_sprite = spr_inv_flower_fireweed//itemsprite
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

scr_write_itemarray(inv_flower_fireweed)

item_name = "Pumpkin" // item name
item_desc = "A hearty gourd, often used to ward off spirits" // item desc
item_sprite = spr_inv_flower_pumpkin//itemsprite
item_type= type_deployable //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 55//value, referenced when used by itemtype(ex, money when sold, regenerated)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_flower_pumpkin)

item_name = "Ghost Flower" // item name
item_desc = "A small flower that looks strangely like a trapped soul" // item desc
item_sprite = spr_inv_flower_ghost//itemsprite
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

scr_write_itemarray(inv_flower_ghost)








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

item_name = "Watering Can" // item name
item_desc = "Somehow it's always full of water" // item desc
item_sprite = spr_inv_tool_wateringcan //itemsprite
item_type= type_wateringcan //item type "seed" "restore happiness" ""
item_gdays = 0//grow_days
item_ghours = 0//grow_hours
item_gminutes = 0//grow_minutes
item_gseconds = 0//grow_seconds
item_value= 600//value, referenced when used by itemtype(ammount of time removed from growtime)
item_windparticle = noone//wind particle
item_reward = inv_none//grow_reward, inventory item. Will be spawned as a pickup
item_yield = 0//yield number of reward returned
item_growsprite = spr_none

scr_write_itemarray(inv_tool_wateringcan)



