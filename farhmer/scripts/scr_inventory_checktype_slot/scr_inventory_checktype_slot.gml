//scr_inventory_checktype_slot(slot)
//returns type of item in slot, for simplicity
var slot = argument0

var item = global. inventory_array[slot,0]

return global. item_array[item,4]