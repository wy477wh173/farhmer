
//define item names
scr_define_itemarray()

global. inventory_max = 14
global. inventory_select = 0
xerp = 0
while(xerp <= global. inventory_max)
{
    global. inventory_array[xerp,0] = 0//itemid
    global. inventory_array[xerp,1] = 0//stack
    //all item info is now held in global. item_array
    //scr_inventory_setinfo(xerp)
    xerp += 1
}