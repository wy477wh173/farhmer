///scr_inventory_transactslot(slot,number)
//this does not confirm WHICH item is in this slot, so make sure you've checked what's in the slot before you do this
inv_slot = argument0
inv_item_num = argument1

retr = "fail"

xery = inv_slot
            //found stack
if(global. inventory_array[xery,1] >= abs(inv_item_num))
    {
    global. inventory_array[xery,1] += inv_item_num
    xery = global. inventory_max
    retr = "complete"
    }   
    
return retr;