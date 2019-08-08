///scr_inventory_scrubempty()
retr = 0

xery = 0
while(xery < global. inventory_max)
    {   
    if(global. inventory_array[xery,0] = inv_none)
        {
        xery += 1        
        }
        else
            {
            if(global. inventory_array[xery,1] <= 0) 
                {
                global. inventory_array[xery, 0] = inv_none// zero itemid
                global. inventory_array[xery, 1] = 0//zero inventory slot
                retr = 0
                }
            xery += 1
            }
    }
    
return retr;
