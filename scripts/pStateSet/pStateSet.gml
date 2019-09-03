///@description Set a new state and update other state variables
///@param {int} state

//Give us until the end of this script to do stuff based on previous state, assuming state is changing
obj_player.stateLast = obj_player.stateCurrent;

//Set flags and counters here based on what state is being moved to
switch(argument[0])
{
	case 0: //idle
	case 1: //run
		jumpCount = jumpBaseCount;
		break;
	case 2: //jump
		break;
	case 3: //fall
		break;
	case 4: //dash low
		break;
	case 5: //dash mid
		break;
	case 6: //dash high
		break;
}

obj_player.stateCurrent = argument[0];