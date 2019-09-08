///@description Update state based on player variables
///@param {int} state

//when standing on something
if (obj_player.pGrounded)
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

//when not standing on something
if ( !obj_player.pGrounded
	&& (floor(yvel) >= 0) )
{
	pStateSet(pState.fall);
}

if (obj_player.stateCurrent = pState.jump
	&& obj_player.stateLast == pState.dash
	&& obj_player.xvel == 0)
{
	pLeftRight = true;
}