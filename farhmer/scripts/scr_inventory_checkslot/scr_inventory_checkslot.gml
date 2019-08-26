///scr_inventory_checkslot(slot) returns stack ammount
//returns the stack ammount, so a fail would be zero, but anything else means it succeeded and is > your checked number
var inv_item_slot = argument0
//inv_item_num = argument1

var retr = 0

//if(global. inventory_array[inv_item_slot,2])
//    {
    //passed check
    retr = global. inventory_array[inv_item_slot,2]
//    }
    
return retr;