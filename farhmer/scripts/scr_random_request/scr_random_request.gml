///scr_random_request()
var gep = 0
var num = 0
request_array[gep] = inv_flower_fireweed
gep +=1
request_array[gep] = inv_flower_flamingo
gep +=1
request_array[gep] = inv_flower_floppy
gep +=1
request_array[gep] = inv_flower_ghost
gep +=1
request_array[gep] = inv_flower_pumpkin
gep +=1
request_array[gep] = inv_flower_fireweed
gep +=1
request_array[gep] = inv_flower_floppy
num = irandom(array_length_1d(request_array)-1)

return request_array[num]

