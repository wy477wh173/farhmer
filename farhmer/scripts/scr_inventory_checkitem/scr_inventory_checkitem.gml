#define scr_inventory_checkitem
///scr_inventory_checkitem(itemname,number) returns stacknum
inv_item_name = argument0
inv_item_num = argument1

retr = 0

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
            if(global. inventory_array[xery,1] >= inv_item_num)
                {
                //found stack
                xery = global. inventory_max
                retr = 1//global. inventory_array[xery,1]
                }
            xery = global. inventory_max
            }
    }
    
return retr;