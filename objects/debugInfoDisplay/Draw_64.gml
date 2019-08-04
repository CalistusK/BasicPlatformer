if (debug_mode && debugDraw) {
	debugInfoAdd(0, "Debug Info:");
	debugInfoAdd(1, "pState: ", debugpState);
	debugInfoAdd(2, "obj_player.hspeed: ", obj_player.hspeed);
	debugInfoAdd(3, "obj_player.vspeed: ", obj_player.vspeed);
	debugInfoAdd(4, "obj_player.x: ", obj_player.x);
	debugInfoAdd(5, "obj_player.y: ", obj_player.y);	
	
	//Get player state
	switch(obj_player.stateCurrent) {
		case 0:
			debugpState = "idle";
			break;
		case 1:
			debugpState = "run";
			break;
		case 2:
			debugpState = "jump";
			break;
		case 3:
			debugpState = "fall";
			break;
		case 4:
			debugpState = "dash_low";
			break;
		case 5:
			debugpState = "dash_mid";
			break;
		case 6:
			debugpState = "dash_high";
			break;
	}
}