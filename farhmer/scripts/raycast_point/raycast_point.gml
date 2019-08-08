///raycast_point(startx,starty,endx,endy,detail)// 1 for blocked 0 for free

//credit: Wyatt White (CakeNeq Games)

//Establish argument variables
originx = argument0
originy = argument1
endx = argument2
endy = argument3
detail = argument4


collided = 0

scanner_point = 0
aim_dir = point_direction(originx, originy, endx,endy)
ending = point_distance(originx,originy, endx,endy)


while(scanner_point < ending)
    {
    castx = originx + lengthdir_x(scanner_point,aim_dir)
    casty = originy + lengthdir_y(scanner_point,aim_dir)
    
    
    if(!place_free(castx,casty))
        {
        //target_obj = instance_place(castx,casty, all)
        collided = 1
        
        destx = castx;
        desty = casty;
        
        //return destx;
        //return desty;
        return collided;
        }
    //amended from 1 to 25 to reduce CPU usage
    scanner_point += detail
    }
//If the raycast hit nothing, return false
destx = endx
desty = endy

//return destx;
//return desty;
return collided;

//return false;
