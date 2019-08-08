///scr_set_endtime(days, hours,minutes,seconds)
//this will be our uniform way to set an enddate

var days = argument0
var hours = argument1
var minutes = argument2
var seconds = argument3
var currenttime = global. current_datetime
var unixdate = 0

//increment days // seconds in a day   86400
currenttime += 86400 * days
//increment horus // seconds in an hour     3600
currenttime += 3600 * hours
//increment minutes // secnds in a minute 60
currenttime += 60 * minutes
//increment seconds
currenttime += 1 * seconds

return currenttime;