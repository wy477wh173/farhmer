
if(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_player,false,true))
{
    xfer = 1
}


if(xfer = 1)
{
    xfer = 0
    room_goto(rm_town)
}