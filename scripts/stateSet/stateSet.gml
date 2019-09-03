///@description Set a new state and update other state variables
///@param {int} state

obj_player.stateLast = obj_player.stateCurrent;

pState = argument[0];

//Set flags and counters here based on what state is being moved to?

switch(obj_player.stateCurrent)
{
	case 0: //idle
		
		break;
	case 1: //run
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