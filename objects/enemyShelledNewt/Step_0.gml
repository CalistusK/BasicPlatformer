if place_meeting(x,y-1,obj_player) and alarm[0] <= 0
{
	alarm[0] = timerFireball;
}

if alarm[0] = timerFireball/2
{
	self.image_blend = c_red;
}