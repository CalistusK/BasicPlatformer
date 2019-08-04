if (debug_mode && debugDraw) {
	debugInfoAdd(0, "Debug Info:");
	debugInfoAdd(1, "FPS: " + string(fps));
	debugInfoAdd(2, "pState: ", debugpState);
	debugInfoAdd(3, "obj_player.hspeed: ", obj_player.hspeed);
	debugInfoAdd(4, "obj_player.vspeed: ", obj_player.vspeed);
	debugInfoAdd(5, "obj_player.x: ", obj_player.x);
	debugInfoAdd(6, "obj_player.y: ", obj_player.y);
	debugInfoAdd(7, "jumpCount: ", obj_player.jumpCount);
	
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