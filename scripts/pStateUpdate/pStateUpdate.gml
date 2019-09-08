///@description Update state based on player variables
///@param {int} state

if (place_meeting(obj_player.x,obj_player.y+1,all))
{
	if (obj_player.xvel == 0)
	{
		pStateSet(pState.idle);
	}
	else
	{
		pStateSet(pState.run);
	}
}

if ( (!place_meeting(obj_player.x,obj_player.y+1,all))
	&& (floor(yvel) >= 0) )
{
	pStateSet(pState.fall);
}