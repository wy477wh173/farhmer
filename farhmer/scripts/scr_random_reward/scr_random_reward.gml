///scr_random_reward()
var gep = 0
var num = 0
reward_array[gep] = inv_seed_fireweed
gep +=1
reward_array[gep] = inv_seed_flamingo
gep +=1
reward_array[gep] = inv_seed_floppy
gep +=1
reward_array[gep] = inv_seed_ghost
gep +=1
reward_array[gep] = inv_seed_pumpkin
gep +=1
reward_array[gep] = inv_seed_fireweed
gep +=1
reward_array[gep] = inv_seed_fireweed
num = irandom(array_length_1d(reward_array)-1)

return reward_array[num]

