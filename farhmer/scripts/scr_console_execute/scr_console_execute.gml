///scr_console_execute(string)

var strig = argument0

/*template
if(strig = "")
{
    //do something
}
*/

if(strig = "spawn seed random")
{
    //do something
    scr_spawn_pickup(scr_random_item(),5,obj_cursor.x, obj_cursor.y)
}