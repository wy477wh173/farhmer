/*
//scr_inventory_combine_execute
if(ingredient1 != "" && ingredient0 != "")
    {
    scr_inventory_craft(ingredient0,ingredient1)
    ingredient0 = ""
    ingredient1 = ""
    }

//scr_inventory_craft_recipedefine
///scr_inventory_recipe_craft()
//this defines crafting recipes


craft_num = 0// thaw water
    craft_array[craft_num,0] = inv_flare//ingredient
    craft_array[craft_num,1] = 1// number needed
    craft_array[craft_num,2] = inv_water_frozen//ingredient
    craft_array[craft_num,3] = 1// number needed
    
    craft_array[craft_num,4] = inv_water_thawed//resulting item
    craft_array[craft_num,5] = 1// number returned
    craft_array[craft_num,6] = "Flare-Thawed Water"//item name
    craft_array[craft_num,7] = "Lots of water out here in the West, but since it's cold as hell out here, its all frozen."
    
craft_num = 1// cook meat
    craft_array[craft_num,0] = inv_flare//ingredient
    craft_array[craft_num,1] = 1// number needed
    craft_array[craft_num,2] = inv_meat_raw//ingredient
    craft_array[craft_num,3] = 1// number needed
    
    craft_array[craft_num,4] = inv_meat_cooked//resulting item
    craft_array[craft_num,5] = 1// number returned
    craft_array[craft_num,6] = "Flare-Cooked Meat"//item name
    craft_array[craft_num,7] = "You got the meat, now use some heat, to make it fit for a king to eat."
    
craft_num = 2// create flare
    craft_array[craft_num,0] = inv_rags//ingredient
    craft_array[craft_num,1] = 2// number needed
    craft_array[craft_num,2] = inv_parts//ingredient
    craft_array[craft_num,3] = 5// number needed
    
    craft_array[craft_num,4] = inv_flare//resulting item
    craft_array[craft_num,5] = 1// number returned
    craft_array[craft_num,6] = "Hommade Flare"//item name
    craft_array[craft_num,7] = "Metal shavings in a thick container, if you can light it it'll burn brighter than you can imagine."
    
craft_num = 3 //create pistol ammobox
    craft_array[craft_num,0] = inv_casing_primer//ingredient
    craft_array[craft_num,1] = 1// number needed
    craft_array[craft_num,2] = inv_casing_pistol//ingredient
    craft_array[craft_num,3] = 1// number needed
    
    craft_array[craft_num,4] = inv_ammo_pistol//resulting item
    craft_array[craft_num,5] = 1// number returned
    craft_array[craft_num,6] = "Pistol Ammo"//item name
    craft_array[craft_num,7] = "Some rough pistol ammunition"
    
craft_num = 4 //create rifle ammobox
    craft_array[craft_num,0] = inv_casing_primer//ingredient
    craft_array[craft_num,1] = 1// number needed
    craft_array[craft_num,2] = inv_casing_rifle//ingredient
    craft_array[craft_num,3] = 1// number needed
    
    craft_array[craft_num,4] = inv_ammo_rifle//resulting item
    craft_array[craft_num,5] = 1// number returned
    craft_array[craft_num,6] = "Rifle Ammo"//item name
    craft_array[craft_num,7] = "Some rough rifle ammunition"
    
    
    
    
craft_max = craft_num// + 1

//scr_inventory_combine_select
//slot2
if(ingredient0 != "" && ingredient1 = "")
    {
    ingredient1 = global. inventory_array[inv_selector,0]
    }
//slot1
if(ingredient0 = "")
    {
    ingredient0 = global. inventory_array[inv_selector,0]
    }


    


// scr_inventory_craft
///scr_inventory_craft(ingredient1, ingredient2)

crft1 = argument0
crft2 = argument1

scr_inventory_craft_recipedefine()

scan = 0
while(scan < craft_max)
    {
    //check if it equals craft1
    if(craft_array[scan,0] = crft1)//check if slot matches space1
        {
        if(scr_inventory_checkitem(craft_array[scan,0],(craft_array[scan,1] * -1)) = "complete")//check number is sufficient
            {
            //move on to check slot2
            if(craft_array[scan,2] = crft2) 
                {
                if(scr_inventory_checkitem(craft_array[scan,2],(craft_array[scan,3] * -1)) = "complete")
                    {//transact items
                    scr_inventory_transactitem(craft_array[scan,0],(craft_array[scan,1] * -1))
                    scr_inventory_transactitem(craft_array[scan,2],(craft_array[scan,3] * -1))
                    //add crafted item
                    scr_inventory_additem(craft_array[scan,4],craft_array[scan,6],craft_array[scan,5],100,spr_none)
                    //exit
                    scan = craft_max
                    }
                }
            }
        }
        else{
            //check if it equals craft2
            if(craft_array[scan,0] = crft2)//check if slot matches space1
                {
                if(scr_inventory_checkitem(craft_array[scan,0],(craft_array[scan,1] * -1)) = "complete")//check number is sufficient
                    {
                    //move on to check slot2
                    if(craft_array[scan,2] = crft1) 
                        {
                        if(scr_inventory_checkitem(craft_array[scan,2],(craft_array[scan,3] * -1)) = "complete")
                            {//transact items
                            scr_inventory_transactitem(craft_array[scan,0],(craft_array[scan,1] * -1))
                            scr_inventory_transactitem(craft_array[scan,2],(craft_array[scan,3] * -1))
                            //add crafted item
                            scr_inventory_additem(craft_array[scan,4],craft_array[scan,6],craft_array[scan,5],100,spr_none)
                            //exit
                            scan = craft_max
                            }
                        }
                    }
                }
            }
    scan += 1
    }
// scr_inventory_setsprite
///scr_inventory_setsprite(item id)
type = argument0
retr = 0

if(type = inv_none)
    {retr = spr_none}
    
if(type = inv_water_thawed)
    {retr = spr_inv_water_thawed}
    
if(type = inv_water_frozen)
    {retr = spr_inv_water_frozen}
    
if(type = inv_parts)
    {retr = spr_inv_parts}
    
if(type = inv_meat_cooked)
    {retr = spr_inv_meat_cooked}
    
if(type = inv_meat_raw)
    {retr = spr_inv_meat_raw}
    
if(type = inv_wood)
    {retr = spr_inv_wood}

if(type = inv_rags)
    {retr = spr_inv_rags}
    
if(type = inv_flare)
    {retr = spr_inv_flare}
    
if(type = inv_casing_rifle)
    {retr = spr_inv_bullet_rifle}
    
if(type = inv_casing_pistol)
    {retr = spr_inv_bullet_pistol}
    
if(type = inv_casing_primer)
    {retr = spr_inv_bullet_primer}
    
if(type = inv_ammo_pistol)
    {retr = spr_inv_ammo_pistol}
    
if(type = inv_ammo_rifle)
    {retr = spr_inv_ammo_rifle}
    
if(type = inv_mlion)
    {retr = spr_inv_mlion_tail}
    
return retr;