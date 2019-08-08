sprite = spr_particle_generic
mask = spr_particle_generic

dir = irandom(360)
rot = dir 
spd = random_range(.9,3)
decel_spd = .02 //decel per frame
rot_change = random_range(.1,2) * choose(1,-1)//rotation per frame
scale = 1
alpha = 1