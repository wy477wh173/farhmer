///scr_inventory_transactitem(itemname,number)
var inv_item_name = argument0
var inv_item_num = argument1

retr = "fail"

xery = 0
while(xery < global. inventory_max)
    {   
    if(global. inventory_array[xery,0] != inv_item_name && xery != global. inventory_max)
        {
        //looking for stack
        xery += 1
        }
        else
            {
            //found stack
            if(global. inventory_array[xery,1] >= abs(inv_item_num))
                {
                global. inventory_array[xery,1] += inv_item_num
                xery = global. inventory_max
                retr = "complete"
                }else{xery = global. inventory_max}   
            }
    }

    
return retr;