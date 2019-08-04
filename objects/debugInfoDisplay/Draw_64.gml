if (debug_mode && debugDraw) {
	debugInfoAdd("Debug Info:");
	debugInfoAdd("FPS: ", string(fps));
	debugInfoAdd("pState: ", debugpState);
	debugInfoAdd("obj_player.hspeed: ", obj_player.hspeed);
	debugInfoAdd("obj_player.vspeed: ", obj_player.vspeed);
	debugInfoAdd("obj_player.x: ", obj_player.x);
	debugInfoAdd("obj_player.y: ", obj_player.y);
	debugInfoAdd("jumpCount: ", obj_player.jumpCount);
	
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