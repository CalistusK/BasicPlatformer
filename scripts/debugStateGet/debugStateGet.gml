///@description Get state name
///@param {int} state

switch(argument[0])
{
	case 0:
		return "idle";
		break;
	case 1:
		return "run";
		break;
	case 2:
		return "jump";
		break;
	case 3:
		return "fall";
		break;
	case 4:
		return "dash";
		break;
}