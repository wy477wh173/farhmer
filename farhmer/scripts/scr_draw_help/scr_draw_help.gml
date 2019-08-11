///scr_draw_help(yes or no)
draw_help = argument0

if(draw_help = 1)
{
    helpx = 0
    helpy = 0
    
    draw_text(helpx,helpy, "Left Click/Tap to move")
    drawy += 16
    
    draw_text(helpx, helpy, "Right Click/Double-Tap to use selected item")
    drawy += 16
    
    draw_text(helpx, helpy, "Spacebar -- Dev Mode")
    drawy += 16
    
    
}