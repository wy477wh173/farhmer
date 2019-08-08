///raycast_dir(startx,starty,dir,dist,detail) returns binary free(0) blocked(1)

//credit: Wyatt White (CakeNeq Games)

//Establish argument variables
originx = argument0
originy = argument1
rdir = argument2
rdist = argument3
endx = argument0 + lengthdir_x(rdist,rdir)
endy = argument1 + lengthdir_y(rdist,rdir)
detail = argument4

//collided binary
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
        //collided binary
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
