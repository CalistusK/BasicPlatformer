/// @description Insert description here
// You can write your code in this editor

if debug_mode and room_next(room) != -1
{
	room_goto_next();
} else {
	room_goto(room_first);
}