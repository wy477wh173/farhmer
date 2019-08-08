///scr_inventory_checkslot(slot,number) returns stack ammount
//returns the stack ammount, so a fail would be zero, but anything else means it succeeded and is > your checked number
inv_item_slot = argument0
inv_item_num = argument1

retr = 0

if(global. inventory_array[inv_item_slot,2] >= inv_item_num)
    {
    //passed check
    retr = global. inventory_array[inv_item_slot,2]
    }
    
return retr;