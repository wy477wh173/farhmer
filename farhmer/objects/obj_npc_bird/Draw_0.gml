
//draw shadow
depth = depth_actor
draw_sprite_ext(spr_npc_bird_flying,0,x,y,1.5,1.5,dir,c_black,.7)
//draw actual bird
depth = depth_hud
draw_sprite_ext(spr_npc_bird_flying,0,x,y - 128,1,1,dir,c_white,1)