///scr_inventory_storeitem(itemname,stack)
var inv_item_name = argument0
var inv_item_stack = argument1

var xery = 0
var found = 0

while(xery < global. box_max)
    {
    //look for a stack
    if(global. inventory_box_array[xery,0] != inv_item_name && xery != global. box_max)
        {
        //looking for stack
        xery += 1
        }
        else
            {
            //found stack
            global. inventory_box_array[xery,1] += inv_item_stack
            found = 1
            xery = global. box_max
            }
    }
    
    
    
//
// if no stack, put in an empty slot
if(found = 0)
{
    xery = 0
    while(xery < global. box_max)
    {
        if(global. inventory_box_array[xery,0] = inv_none)
            {
            //if found an empty spot, take it
            global. inventory_box_array[xery,0] = inv_item_name
            global. inventory_box_array[xery,1] = inv_item_stack
            //scr_inventory_setinfo(xery)
            xery = global. box_max
            found = 1
            }
            xery += 1
    }
}