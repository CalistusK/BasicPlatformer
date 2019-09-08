///@description Set a new state and update other state variables
///@param {int} state

//Give us until the end of this script to do stuff based on previous state, assuming state is changing
stateLast = obj_player.stateCurrent;

//Set flags and counters here based on what state is being moved to
switch(argument[0])
{
	case 0: //idle
	case 1: //run
		obj_player.jumpCount = obj_player.jumpBaseCount;
		obj_player.dashCount = obj_player.dashBaseCount;
		obj_player.pLeftRight = true;
		break;
	case 2: //jump
		break;
	case 3: //fall
		obj_player.pLeftRight = true;
		break;
	case 4: //dash
		if !(obj_player.pWallTouch) pLeftRight = false;
		break;
}

obj_player.stateCurrent = argument[0];