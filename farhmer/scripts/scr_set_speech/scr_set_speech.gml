///scr_set_speech(name, portrait, body, noise)

frame = 0//scr_convert_emotion(argument2)

instr = instance_create(x,y,obj_draw_speech)
instr.name = argument0
instr. portrait = argument1
instr.body_text = argument2
instr.print_noise = argument3
//maybe replace this with emotion?
instr.frame = frame
instr.depth = -1