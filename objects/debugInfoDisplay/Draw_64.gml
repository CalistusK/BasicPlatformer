if (debug_mode && debugdraw) {
	draw_set_colour(c_yellow);
	draw_text(5, 0, "Debug Info:");
	
	//Player horizontal speed
	draw_text(5, 15, "obj_playerX: ");
	draw_text(125, 15, obj_player.hspeed);
	
	//Player vertical speed
	draw_text(5, 30, "obj_playerY: ");
	draw_text(125, 30, obj_player.vspeed);
	
	//Player state
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
	draw_text(5, 45, "pState: ");
	draw_text(125, 45, debugpState);
}